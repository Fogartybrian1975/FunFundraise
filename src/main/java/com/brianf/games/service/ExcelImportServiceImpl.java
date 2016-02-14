package com.brianf.games.service;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.brianf.games.dao.PlayerDao;
import com.brianf.games.model.Player;

@Service
public class ExcelImportServiceImpl implements ExcelImportService {

	@Autowired
	PlayerDao playerDao;

	@Override
	public String importExcelFile(MultipartFile file) {
		String name = file.getOriginalFilename();
		if (!file.isEmpty()) {
			try {
				ByteArrayInputStream bis = new ByteArrayInputStream(file.getBytes());
				Workbook workbook;

				if (name.endsWith("xls")) {
					workbook = new HSSFWorkbook(bis);
				} else if (name.endsWith("xlsx")) {
					workbook = new XSSFWorkbook(bis);
				} else {
					return "Received file does not have a standard excel extension.";
				}

				List<Player> players = readPlayersFromExcelFile(workbook);
				playerDao.saveAll(players);
				bis.close();
				return "You successfully uploaded " + name + "!";
			} catch (Exception e) {
				e.printStackTrace();
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name + " because the file was empty.";
		}
	}

	public List<Player> readPlayersFromExcelFile(Workbook workbook) throws IOException {
		List<Player> players = new ArrayList<>();

		Sheet firstSheet = workbook.getSheetAt(0);
		Iterator<Row> iterator = firstSheet.iterator();

		while (iterator.hasNext()) {
			Row nextRow = iterator.next();
			Iterator<Cell> cellIterator = nextRow.cellIterator();
			Player player = new Player();

			while (cellIterator.hasNext()) {
				Cell nextCell = cellIterator.next();
				int columnIndex = nextCell.getColumnIndex();
				switch (columnIndex) {
				case 0:
					player.setName((String) getCellValue(nextCell));
					break;
				case 1:
					player.setRank(((Double) getCellValue(nextCell)).intValue());
					break;
				case 2:
					player.setIcon((String) getCellValue(nextCell));
					break;
				}
			}
			players.add(player);
		}

		return players;
	}

	private Object getCellValue(Cell cell) {
		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_STRING:
			return cell.getStringCellValue();

		case Cell.CELL_TYPE_BOOLEAN:
			return cell.getBooleanCellValue();

		case Cell.CELL_TYPE_NUMERIC:
			return cell.getNumericCellValue();
		}

		return null;
	}
}

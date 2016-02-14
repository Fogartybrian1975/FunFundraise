package com.brianf.games.service;

import org.springframework.web.multipart.MultipartFile;

public interface ExcelImportService {


	String importExcelFile(MultipartFile file);
}

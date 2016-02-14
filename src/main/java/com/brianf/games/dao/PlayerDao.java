package com.brianf.games.dao;

import java.util.List;

import com.brianf.games.model.Player;

public interface PlayerDao {

	Player findById(int id);

	void saveAll(List<Player> players);

}

package com.brianf.games.dao;

import com.brianf.games.model.User;

public interface UserDao {

	User findByUserName(String username);

}
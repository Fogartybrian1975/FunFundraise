package com.brianf.games.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.brianf.games.model.Player;

@Repository
@Transactional
public class PlayerDaoImpl implements PlayerDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Player findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return (Player) session.get(Player.class, id);
	}
	
	@Override
	public void saveAll(List<Player> players) {
		Session session = sessionFactory.getCurrentSession();
		for(Player player : players) {
			session.save(player);
		}
	}

}

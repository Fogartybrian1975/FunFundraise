package com.brianf.games.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "players", catalog = "fyp")
public class Player {

	private int id;

	private String name;
	private int rank;
	private String icon;

	public Player() {
	}

	public Player(String name, int rank, String icon) {
		super();
		this.name = name;
		this.rank = rank;
		this.icon = icon;
	}

	public Player(int id, String name, int rank, String icon) {
		super();
		this.id = id;
		this.name = name;
		this.rank = rank;
		this.icon = icon;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false, length = 45)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 60)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "rank", nullable = false)
	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Column(name = "icon", nullable = true)
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

}
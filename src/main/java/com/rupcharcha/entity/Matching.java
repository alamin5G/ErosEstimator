package com.rupcharcha.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "eros_match_history")
public class Matching {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String yourName;
	private String matchName;
	private String matchResult;
	
	@ManyToOne
	User user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getYourName() {
		return yourName;
	}

	public void setYourName(String yourName) {
		this.yourName = yourName;
	}

	public String getMatchName() {
		return matchName;
	}

	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}

	public String getMatchResult() {
		return matchResult;
	}

	public void setMatchResult(String matchResult) {
		this.matchResult = matchResult;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Matching [id=" + id + ", yourName=" + yourName + ", matchName=" + matchName + ", matchResult="
				+ matchResult + ", user=" + user + "]";
	}

	
}

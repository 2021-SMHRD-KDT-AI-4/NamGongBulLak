package com_model;

public class RankingSongDTO {
	private int rank;
	private String proImg;
	private String nickname;
	private int accuracy;
	private String emblem;
	private String songTitle;
	

	public RankingSongDTO(int rank, String proImg, String nickname, int accuracy, String emblem, String songTitle) {
		super();
		this.rank = rank;
		this.proImg = proImg;
		this.nickname = nickname;
		this.accuracy = accuracy;
		this.emblem = emblem;
		this.songTitle = songTitle;
	}
	
	public RankingSongDTO(int rank, String proImg, String nickname, int accuracy, String emblem) {
		super();
		this.rank = rank;
		this.proImg = proImg;
		this.nickname = nickname;
		this.accuracy = accuracy;
		this.emblem = emblem;
	}

	public RankingSongDTO(String songTitle) {
		super();
		this.songTitle = songTitle;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getProImg() {
		return proImg;
	}

	public void setProImg(String proImg) {
		this.proImg = proImg;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getAccuracy() {
		return accuracy;
	}

	public void setAccuracy(int accuracy) {
		this.accuracy = accuracy;
	}

	public String getEmblem() {
		return emblem;
	}

	public void setEmblem(String emblem) {
		this.emblem = emblem;
	}

	public String getSongTitle() {
		return songTitle;
	}

	public void setSongTitle(String songTitle) {
		this.songTitle = songTitle;
	}
	
	
	
}

package com_model;

public class RankingCountryDTO {
	
	private int rank;
	private String proImg;
	private String nickname;
	private int accuracy;
	private String emblem;
	private String Rcountry;
	private int CRSum;
	
	public RankingCountryDTO(int rank, String proImg, String nickname, int accuracy, String emblem, String rcountry,
			int cRSum) {
		super();
		this.rank = rank;
		this.proImg = proImg;
		this.nickname = nickname;
		this.accuracy = accuracy;
		this.emblem = emblem;
		Rcountry = rcountry;
		CRSum = cRSum;
	}

	
	public RankingCountryDTO(int rank, String proImg, String nickname, int accuracy, String emblem, String rcountry) {
		super();
		this.rank = rank;
		this.proImg = proImg;
		this.nickname = nickname;
		this.accuracy = accuracy;
		this.emblem = emblem;
		Rcountry = rcountry;
	}


	public RankingCountryDTO(String rcountry) {
		super();
		Rcountry = rcountry;
	}



	public RankingCountryDTO(int rank, String proImg, String nickname, int accuracy, String emblem) {
		super();
		this.rank = rank;
		this.proImg = proImg;
		this.nickname = nickname;
		this.accuracy = accuracy;
		this.emblem = emblem;
	}

	public RankingCountryDTO(int rank, String rcountry, int cRSum) {
		super();
		this.rank = rank;
		Rcountry = rcountry;
		CRSum = cRSum;
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

	public String getRcountry() {
		return Rcountry;
	}

	public void setRcountry(String rcountry) {
		Rcountry = rcountry;
	}

	public int getCRSum() {
		return CRSum;
	}

	public void setCRSum(int cRSum) {
		CRSum = cRSum;
	}
	
		
}

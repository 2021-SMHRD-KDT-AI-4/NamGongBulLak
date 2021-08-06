package com_model;

public class SongRankDTO {
	private int play_seq;
	private String id;
	private int premium;
	private String date;
	private String song_title;
	private String song_singer;
	private float accuracy;
	private String user_file_name;
	private int season;
	private int song_seq;
	
	public SongRankDTO(int play_seq, String id, int premium, String date, String song_title, String song_singer,
			float accuracy, String user_file_name, int season, int song_seq) {
		super();
		this.play_seq = play_seq;
		this.id = id;
		this.premium = premium;
		this.date = date;
		this.song_title = song_title;
		this.song_singer = song_singer;
		this.accuracy = accuracy;
		this.user_file_name = user_file_name;
		this.season = season;
		this.song_seq = song_seq;
	}
	

	public int getPlay_seq() {
		return play_seq;
	}

	public void setPlay_seq(int play_seq) {
		this.play_seq = play_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPremium() {
		return premium;
	}

	public void setPremium(int premium) {
		this.premium = premium;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSong_title() {
		return song_title;
	}

	public void setSong_title(String song_title) {
		this.song_title = song_title;
	}

	public String getSong_singer() {
		return song_singer;
	}

	public void setSong_singer(String song_singer) {
		this.song_singer = song_singer;
	}

	public float getAccuracy() {
		return accuracy;
	}

	public void setAccuracy(float accuracy) {
		this.accuracy = accuracy;
	}

	public String getUser_file_name() {
		return user_file_name;
	}

	public void setUser_file_name(String user_file_name) {
		this.user_file_name = user_file_name;
	}

	public int getSeason() {
		return season;
	}

	public void setSeason(int season) {
		this.season = season;
	}

	public int getSong_seq() {
		return song_seq;
	}

	public void setSong_seq(int song_seq) {
		this.song_seq = song_seq;
	}
	
	
}

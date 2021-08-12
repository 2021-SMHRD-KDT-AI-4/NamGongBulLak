package com_model;

public class DanceDTO {
	private String song_title;
	private String song_singer;
	private String song_filepath;
	private int song_price;
	private String album_filename;
	private String album_title;
	private String release_date;
	private int song_seq;
	private String difficulty;
	
	
	public DanceDTO(String song_title, String song_singer, String song_filepath, int song_price, String album_filename,
			String album_title, String release_date, int song_seq, String difficulty) {
		super();
		this.song_title = song_title;
		this.song_singer = song_singer;
		this.song_filepath = song_filepath;
		this.song_price = song_price;
		this.album_filename = album_filename;
		this.album_title = album_title;
		this.release_date = release_date;
		this.song_seq = song_seq;
		this.difficulty = difficulty;
	}

	public DanceDTO(String song_title, String song_singer, String album_filename, String album_title, int song_seq) {
		super();
		this.song_title = song_title;
		this.song_singer = song_singer;
		this.album_filename = album_filename;
		this.album_title = album_title;
		this.song_seq = song_seq;
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

	public String getSong_filepath() {
		return song_filepath;
	}

	public void setSong_filepath(String song_filepath) {
		this.song_filepath = song_filepath;
	}

	public int getSong_price() {
		return song_price;
	}

	public void setSong_price(int song_price) {
		this.song_price = song_price;
	}

	public String getAlbum_filename() {
		return album_filename;
	}

	public void setAlbum_filename(String album_filename) {
		this.album_filename = album_filename;
	}

	public String getAlbum_title() {
		return album_title;
	}

	public void setAlbum_tile(String album_title) {
		this.album_title = album_title;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	public int getSong_seq() {
		return song_seq;
	}

	public void setSong_seq(int song_seq) {
		this.song_seq = song_seq;
	}
	
	
	
}

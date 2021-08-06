package com_model;

public class SongDTO {
	private String song_title;
	private String song_singer;
	private String song_filepath;
	private int song_price;
	private String album_file_name;
	private String album_name;
	private String release_date;
	private int song_seq;
	
	public SongDTO(String song_title, String song_singer, String song_filepath, int song_price, String album_file_name,
			String album_name, String release_date, int song_seq) {
		super();
		this.song_title = song_title;
		this.song_singer = song_singer;
		this.song_filepath = song_filepath;
		this.song_price = song_price;
		this.album_file_name = album_file_name;
		this.album_name = album_name;
		this.release_date = release_date;
		this.song_seq = song_seq;
	}
	

	public SongDTO(String album_file_name, String song_title, String song_singer,  String album_name) {
		super();
		this.album_file_name = album_file_name;
		this.song_title = song_title;
		this.song_singer = song_singer;
		this.album_name = album_name;
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

	public String getAlbum_file_name() {
		return album_file_name;
	}

	public void setAlbum_file_name(String album_file_name) {
		this.album_file_name = album_file_name;
	}

	public String getAlbum_name() {
		return album_name;
	}

	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
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

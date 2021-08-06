package com_model;

public class MemberDTO {
	
	private String id;
	private String pw;
	private int Mileage;
	private String nickname;
	private int Premium;
	private String country;
	private String share_agree;
	
	public MemberDTO(String id, String pw, int mileage, String nickname, int premium, String country, String share_agree) {
		super();
		this.id = id;
		this.pw = pw;
		Mileage = mileage;
		this.nickname = nickname;
		Premium = premium;
		this.country = country;
		this.share_agree = share_agree;
	}
	
	public MemberDTO(String id, String pw, String nickname, String country, String share_agree) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.country = country;
		this.share_agree = share_agree;
	}

	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getMileage() {
		return Mileage;
	}
	public void setMileage(int mileage) {
		Mileage = mileage;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getPremium() {
		return Premium;
	}
	public void setPremium(int premium) {
		Premium = premium;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public String getShare_agree() {
		return share_agree;
	}

	public void setShare_agree(String share_agree) {
		this.share_agree = share_agree;
	}

	
	
	

	
	
}
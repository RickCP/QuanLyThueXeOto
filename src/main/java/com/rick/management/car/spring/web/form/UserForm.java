package com.rick.management.car.spring.web.form;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class UserForm {
    
	private Integer quanliId;
	@NotEmpty
	private String userName;
	@NotEmpty
	private String password;
	@NotEmpty
	private String hoTen;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date ngaySinh;
	@NotEmpty
	private String gioiTinh;
	@NotEmpty
	private String dienThoai;
	@Min(13)
	private long cmnd;
	@NotEmpty
	private String email;
	@NotEmpty
	private String diachi;
	@NotEmpty
	private String dmQuyen;
	@NotEmpty
	private String confirmPassword;

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Integer getQuanliId() {
		return quanliId;
	}

	public void setQuanliId(Integer quanliId) {
		this.quanliId = quanliId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDienThoai() {
		return dienThoai;
	}

	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}

	public long getCmnd() {
		return cmnd;
	}

	public void setCmnd(long cmnd) {
		this.cmnd = cmnd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getDmQuyen() {
		return dmQuyen;
	}

	public void setDmQuyen(String dmQuyen) {
		this.dmQuyen = dmQuyen;
	}

}

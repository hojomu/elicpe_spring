package org.hj.mapper;

import java.util.ArrayList;

import org.hj.model.LoginVO;

public interface LoginMapper {
	public void memreg(LoginVO member);
	public LoginVO login(LoginVO member);
	public ArrayList<LoginVO> memList();
	public LoginVO memDetail(LoginVO member);
	public void memModify(LoginVO member);
	public void memDelete(LoginVO member);
}

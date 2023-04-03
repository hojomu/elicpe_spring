package org.hj.service;

import java.util.ArrayList;

import org.hj.mapper.LoginMapper;
import org.hj.model.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginMapper lm;
	
	public void memreg(LoginVO member) {
		lm.memreg(member);
	}
	
	public LoginVO login (LoginVO member) {
		System.out.println("service="+member);
		System.out.println("service return="+lm.login(member));
		return lm.login(member);
	}
	
	public ArrayList<LoginVO> memList() {
		return lm.memList();
	}
	
	public LoginVO memDetail(LoginVO member) {
		return lm.memDetail(member);
	}
	
	public void memModify(LoginVO member) {
		System.out.println(member);
		lm.memModify(member);
	}
	
	public void memDelete(LoginVO member) {
		lm.memDelete(member);
	}
	
	
}

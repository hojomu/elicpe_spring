package hjm.portfolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hjm.portfolio.mapper.LoginMapper;
import hjm.portfolio.model.LoginVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginMapper lm;
	
	public void memIn(LoginVO member) {
		lm.memId(member);
	}
	
	public LoginVO login(LoginVO member) {
		return lm.login(member);
	}

}

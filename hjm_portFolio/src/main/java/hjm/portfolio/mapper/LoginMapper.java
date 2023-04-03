package hjm.portfolio.mapper;

import hjm.portfolio.model.LoginVO;

public interface LoginMapper {
	public void memId(LoginVO member);
	public LoginVO login(LoginVO member);
}

package com.wavem.frist.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.wavem.frist.dao.LoginDao;
import com.wavem.frist.service.LoginService;
import com.wavem.frist.vo.UserInfoVo;

@Service("LoginServiceImpl")
public class LoginServiceImpl implements LoginService {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginServiceImpl.class);
	
	@Resource(name = "LoginDaoImpl")
	private LoginDao loginDao; // 사용자
	
	@Override
	public List<UserInfoVo> select(UserInfoVo indoorMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserInfoVo> login(UserInfoVo userInfo) {
		// TODO Auto-generated method stub
		logger.info("========LoginServiceImpl 시작=======");

//		String userclass = userInfo.getUserclass();

//		logger.info("========LoginServiceImpl userclass:" + userclass);

		List<UserInfoVo> userInfoList = loginDao.login(userInfo);

		logger.info("========LoginServiceImpl 종료=======");
		return userInfoList;
	}

}

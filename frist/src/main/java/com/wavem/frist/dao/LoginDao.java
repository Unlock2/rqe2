package com.wavem.frist.dao;

import java.util.List;

import com.wavem.frist.vo.UserInfoVo;

public interface LoginDao {

public void select(UserInfoVo indoorMap);
	
	public List<UserInfoVo> login(UserInfoVo userInfo);
	
}

package com.wavem.frist.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wavem.frist.vo.UserInfoVo;

@Service
public interface LoginService {

	public List<UserInfoVo> select(UserInfoVo indoorMap);

	public List<UserInfoVo> login(UserInfoVo userInfo);
}

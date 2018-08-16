package com.wavem.frist.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wavem.frist.dao.SampleDao;

@Repository("sampleDao")
public class SampleDaoImpl implements SampleDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Map<String, String>> selectSampleList(int age) {
		// TODO Auto-generated method stub
		Map<String, Object> param = new HashMap<>();
		
		param.put("age", age);
		
		return sqlSession.selectList("mapper.selectSample", param);
		
	}

}

package com.wavem.frist.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wavem.frist.dao.SampleDao;
import com.wavem.frist.service.SampleService;

@Service
public class SampleServiceImpl implements SampleService {

	@Autowired
	private SampleDao sampleDao;
	
	@Override
	public List<Map<String, String>> getSample(int age) {
		// TODO Auto-generated method stub
		
		System.out.println("SampleServiceImpl");
		
		return sampleDao.selectSampleList(age);
	}

	
}

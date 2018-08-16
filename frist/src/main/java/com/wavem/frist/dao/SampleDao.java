package com.wavem.frist.dao;

import java.util.List;
import java.util.Map;

public interface SampleDao {

	public List<Map<String, String>> selectSampleList(int age);
	
}

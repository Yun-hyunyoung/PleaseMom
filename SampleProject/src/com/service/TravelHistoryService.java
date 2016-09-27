package com.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.exception.CommonException;


public class TravelHistoryService {

	public void insert(int request_num, int guider_num, int scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		HashMap<String, Integer> map=new HashMap<>();
		map.put("th_req_num", request_num);
		map.put("th_gui_num", guider_num);
		map.put("th_scb_num", scb_num);
		try {
			session.insert("insertTravelHistory",map);
			session.commit();
		} 
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("Travel_History Table Insert Failed");
		}
		finally {
			session.close();
		}
		
	}
	
}

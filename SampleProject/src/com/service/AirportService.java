package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.AirportInfoDTO;

public class AirportService {
	public List<AirportInfoDTO> airportSearch(String name){
		SqlSession session = MySqlSessionFactory.getSession();
		List<AirportInfoDTO> list = null;
		try {
			list = session.selectList("airport.search", name);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	public List<AirportInfoDTO> nationSearch(String name){
		SqlSession session = MySqlSessionFactory.getSession();
		List<AirportInfoDTO> list = null;
		try {
			list = session.selectList("airport.nationSearch", name);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}

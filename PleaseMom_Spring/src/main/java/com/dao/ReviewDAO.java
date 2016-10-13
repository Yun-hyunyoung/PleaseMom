package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ReviewDTO;
import com.exception.CommonException;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<ReviewDTO> rievewList(int mem_num) throws CommonException{
		List<ReviewDTO>list = template.selectList("review.reviewList", mem_num);
		return list;
	}
	
	public List<String> airportList(List<Integer> airportList) throws CommonException{
		if (airportList.size() == 0 || airportList == null) {
			airportList.add(-1);
		}
		List<String> list = template.selectList("review.airportList", airportList);
		return list;
	}
}

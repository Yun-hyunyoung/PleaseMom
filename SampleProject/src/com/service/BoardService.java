package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.PageDTO;

public class BoardService {

	//페이지
	public HashMap<String, Object> page(int curPage, HashMap<String, String> map){
		HashMap<String, Object> mapList =new HashMap<>();
		PageDTO dto = new PageDTO();
		List<BoardDTO> list = null;
		List<String> listName_kr_start=null;
		List<String> listName_kr_arrival=null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		   //new RowBounds(시작, 갯수))
		int count = dto.getPerPage();	
		int skip = (curPage-1)*count;
        list =
		session.selectList("list", map,
				new RowBounds(skip, count));
        listName_kr_start =session.selectList("listAirportStart",map,new RowBounds(skip,count));
        listName_kr_arrival =session.selectList("listAirportArrival",map,new RowBounds(skip,count));
			
			
		}finally {
			session.close();
		}
		
		//3가지 저장
		dto.setList(list);
		dto.setCurPage(curPage);
		System.out.println("service쪽 cuPage=="+curPage);
		dto.setTotalRecord(totalCount(map));
		
		mapList.put("dto", dto);
		mapList.put("start", listName_kr_start);
		mapList.put("arrival",listName_kr_arrival);
		return mapList;
	}//end list()
	
	//이미지 서치 페이지
	public HashMap<String, Object> imgSearchPage(int curPage, String scb_to){
		HashMap<String, Object> mapList =new HashMap<>();
		PageDTO dto = new PageDTO();
		List<BoardDTO> list = null;
		List<String> listName_kr_start=null;
		List<String> listName_kr_arrival=null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
			//new RowBounds(시작, 갯수))
			int count = dto.getPerPage();	
			int skip = (curPage-1)*count;
			list =
					session.selectList("countrySearch", scb_to,
							new RowBounds(skip, count));
			listName_kr_start =session.selectList("countrySearchStart",scb_to,new RowBounds(skip,count));
			listName_kr_arrival =session.selectList("countrySearchArrival",scb_to,new RowBounds(skip,count));
			
			
		}finally {
			session.close();
		}
		
		//3가지 저장
		dto.setList(list);
		dto.setCurPage(curPage);
		System.out.println("service쪽 cuPage=="+curPage);
		dto.setTotalRecord(totalCount(scb_to));
		
		mapList.put("dto", dto);
		mapList.put("start", listName_kr_start);
		mapList.put("arrival",listName_kr_arrival);
		return mapList;
	}//end list()
	
	//전체 레코드 갯수
	public int totalCount(HashMap<String, String> map){
		int count = 0;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 count = session.selectOne("totalCount",map);
		}finally {
			session.close();
		}
		return count;
	}//end totalCount
	public int totalCount(String scb_to){
		int count = 0;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
			count = session.selectOne("totalCountImgSearch",scb_to);
		}finally {
			session.close();
		}
		return count;
	}//end totalCount
	
	
	
	
	//삭제하기
		public void delete(String num){
			
			SqlSession session = 
					MySqlSessionFactory.getSession();
			try{
	        int n =  	
	    session.delete("delete", Integer.parseInt(num));
	        session.commit();
			}finally {
				session.close();
			}
		}//end delete
		
		
		
	//수정하기
	public void update(BoardDTO dto){
		
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
        int n =  	
      session.update("update", dto);
        session.commit();
		}finally {
			session.close();
		}
	}//end updated
	

	//글자세히 보기
	public HashMap<String, Object> retrieve(String scb_num){
		SqlSession session = 
				MySqlSessionFactory.getSession();
		BoardDTO dto = null;
		String name_kr_start;
		String name_kr_arrival;
		HashMap<String, Object> map=new HashMap<>();
		try{
		  dto = session.selectOne("retrieve", Integer.parseInt(scb_num));
		  System.out.println(dto);
		  name_kr_start=session.selectOne("retrieveAirportStart",dto);
		  name_kr_arrival=session.selectOne("retrieveAirportArrival",dto);
		}finally {
			session.close();
		}
		map.put("bDto",dto);
		map.put("start",name_kr_start);
		map.put("arrival",name_kr_arrival);
		return map;
	}//end 

	
	//글쓰기
	public void write(BoardDTO dto){
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 int n = session.insert("write", dto);
		 session.commit();
		}finally {
			session.close();
		}
	}//end write
	
	//공항번호 가져오기
	public int airportNum(String name) {
		SqlSession session=MySqlSessionFactory.getSession();
		String num="";
		try {
			num=session.selectOne("airport.airportNum",name);
			System.out.println(num);
		} finally {
			session.close();
		}
		return Integer.parseInt(num);
	}
	
	
}//end 

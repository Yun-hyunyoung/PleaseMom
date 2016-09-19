package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.MemberDTO;
import com.exception.CommonException;

public class MemberService {
	public void addMember(MemberDTO dto) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("member.addMember", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원가입 실패");
		} finally {
			session.close();
		}
	}
	
	public MemberDTO login(HashMap<String, String> map) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = session.selectOne("member.login", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("로그인 실패");
		} finally {
			session.close();
		}
		return dto;
	}//end login()
}

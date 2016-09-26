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
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("로그인 실패");
		} finally {
			session.close();
		}
		return dto;
	}//end login()
	
	public MemberDTO boardSearchMember(String scb_num) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = session.selectOne("member.boardSearch",Integer.parseInt(scb_num));
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("게시글작성자 정보찾기 실패");
		} finally {
			session.close();
		}
		return dto;
		
	}
	
	public void updateMember(HashMap<String, String> map) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("updateMember", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원수정 실패");
		} finally {
			session.close();
		}
	}
	
	public MemberDTO catchProfile(String id) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try{
		dto = session.selectOne("member.catchProfile",id);
		}catch(Exception e){
			e.printStackTrace();
			throw new CommonException("회원정보 가져오기 실패");
		}finally{
			session.close();
		}
		return dto;
	}
	
	public void authenEmail(String userid) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("authenEmail", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("이메일 인증 실패");
		} finally {
			session.close();
		}
	}
	
	public void deleteMember(String userid) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try{
			int n = session.delete("member.deleteMember", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원삭제 실패");
		} finally {
			session.close();
		}
	}
	
	public void tempPasswd(HashMap<String,String> map) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try{
			int n = session.update("member.tempPasswd", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("임시비밀번호 설정 실패"); 
		} finally {
			session.close();
		}
	}
	
	
}

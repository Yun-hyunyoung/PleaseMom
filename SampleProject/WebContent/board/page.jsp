<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	PageDTO pageDTO = (PageDTO) request.getAttribute("page");
	int curPage = pageDTO.getCurPage();
	int perPage = pageDTO.getPerPage();
	int totalRecord = pageDTO.getTotalRecord();
	int totalCount = totalRecord / perPage;

	int perBlock = 3;
	int curBlock = curPage / perBlock;
	curBlock++;
	if(curPage % perBlock ==0)
		curBlock--;
	if (totalRecord % perPage != 0)
		totalCount++;

	System.out.print("curBlock===" + curBlock);

	int startPage = ((curBlock - 1) * perBlock) + 1;
	int endPage = startPage + perBlock - 1;
	if (endPage > totalCount)
		endPage = totalCount;

	System.out.print("startPage===" + startPage);
	System.out.println("endPage===" + endPage);
	//첫 페이지 출력
	if (curBlock <= 1) {
		//out.print("1");
	} else {
		out.print("<a href='BoardListServlet?curPage=1'>1</a>&nbsp;");
		out.print("...");
	}

	//이전 버튼 생성
	if (curBlock <= 1) {
	} else {
		int beforePage = perBlock * (curBlock - 1) - (perBlock - 1);
		out.print("<a href='BoardListServlet?curPage=" + beforePage + "'>이전</a>&nbsp;");
		//이전 startPage-1
	}
	for (int i = startPage; i <= endPage; i++) {
		System.out.println("i===" + i + "\t curPage==" + curPage);

		if (curPage == i) {
			out.print(i + "&nbsp;");
		} else {
			out.print("<a href='BoardListServlet?curPage=" + i + "'>" + i + "</a>&nbsp;");
		}

	}
	int totalBlock = totalCount / perBlock;
	totalBlock++;
	if(totalCount % perBlock ==0)
		totalBlock--;
	
	System.out.println("curBlock==="+curBlock);
	System.out.println("totalBlocl==="+totalBlock);
	//다음버튼생성,마지막버튼
	if (totalBlock <= curBlock) {
		//마지막블럭이므로 버튼생성 x
	} else {
		int afterPage=endPage + 1;
		out.print("<a href='BoardListServlet?curPage=" + afterPage + "'>다음</a>&nbsp;");
		out.print("...");
		out.print("<a href='BoardListServlet?curPage=" + totalCount + "'>" +totalCount + "</a>&nbsp;");
		//endPage+1

	}

	/* if (curBlock >= totalBlock) {
	} else {
		//
		out.print("...");
		out.print("<a href='BoardListServlet?curPage=" + totalCount + "'>" +totalCount + "</a>&nbsp;");
	} */
	/* 
	for (int i = 1; i <= totalCount; i++) {
		if (curPage == i) {
			out.print(i + "&nbsp;");
		} else {
			out.print("<a href='BoardListServlet?curPage=" + i + "'>" + i + "</a>&nbsp;");
		}

	} */
%>


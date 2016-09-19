<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.AirportInfoDTO"%>
<%@page import="com.service.AirportService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("value");

	AirportService service = new AirportService();
	List<AirportInfoDTO> list = service.airportSearch(name);
	
	// 최종 완성될 JSONObject 선언(전체)
	JSONObject jsonObject = new JSONObject();
	// airplaneInfo의 JSON정보를 담을 Array 선언
	JSONArray planeArray = new JSONArray();
	
	for(AirportInfoDTO dto : list){
		// airplaneInfo 하나의 정보가 들어갈 JSONObject 선언
		JSONObject airplaneInfo = new JSONObject();
		
		/* airplaneInfo.put("name", dto.getName_kr());
		airplaneInfo.put("country", dto.getCountry_kr());
		airplaneInfo.put("city", dto.getCity_kr()); */
		airplaneInfo.put("plane", dto.getName_kr() +"/"+ dto.getCountry_kr() +"/"+ dto.getCity_kr());
		planeArray.add(airplaneInfo);
	}
	jsonObject.put("airplane", planeArray);
	
%>
<%= jsonObject %>
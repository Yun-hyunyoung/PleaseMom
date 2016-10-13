package com.common;

public class CommonUtil {
	public static String javaToOracleDate(String birthYear, String birthMonth, String birthDate){
		String date = birthYear + "/" + birthMonth + "/" + birthDate;
		
		return date;
	}
	
	public static String getBirthYear(String str){
		String year = str.substring(0, 3);
		
		return year;
	}
}

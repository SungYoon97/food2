  
<%@page import="naver.NSearch"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 내가 만든 네이버 검색 API를 불러 보자
	String result = NSearch.getDate("세계문화유산");
	out.println(result);
%>
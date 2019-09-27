<%@page import="food2.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 세션 체크(불러오기)
	UserVO vo = (UserVO)session.getAttribute("user");
%> 
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="index.jsp">4학4</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
   <% if (vo != null && vo.getGrade() > 9) { %>
    <li class="nav-item">
      <a class="nav-link" href="store.jsp">맛집 추가</a>
    </li>
   <% } %>
    <li class="nav-item">
      <a class="nav-link" href="p2.jsp">전체 맛집</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="random.jsp">맛집 추천</a>
    </li>
    <li class="nav-item">
    <% if (vo == null) { %>
        <a class="nav-link" href="login.jsp">로그인</a>
    <% } else { %>
    	<a class="nav-link" href="logout.jsp">로그아웃</a>
    <% } %>
    </li>
  </ul>
  <form class="form-inline ml-auto" action="search.jsp">
    <input class="form-control mr-sm-2" type="text" name="search" placeholder="맛집 찾기">
    <button class="btn btn-success" type="submit">Search</button>
  </form>
</nav>
</body>
</html>
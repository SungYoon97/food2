<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>

<%

	// index.jsp 에서 넘어 오는 데이터 처리
	String name = request.getParameter("name");		
	String menu = request.getParameter("menu");		
	String price = request.getParameter("price");		
	String loc = request.getParameter("loc");		
	String star = request.getParameter("star");		
	String tel = request.getParameter("tel");		
	String time = request.getParameter("time");		

	// 위 데이터를 데이터 베이스에 넣기
    Connection conn = null;                        
    Boolean connect = false;
            
    try {        
            Context init = new InitialContext();
            DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/kndb");
            conn = ds.getConnection();
            
            String sql = "INSERT INTO food (name, menu,  price, loc, star, tel, time) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, name);	
        	pstmt.setString(2, menu);	
        	pstmt.setString(3, price);	
        	pstmt.setString(4, loc);	
        	pstmt.setString(5, star);	
        	pstmt.setString(6, tel);	
        	pstmt.setString(7, time);	
            pstmt.executeUpdate();
            
            connect = true;
            conn.close();
    } catch (Exception e) {        
            connect = false;
            e.printStackTrace();
    }        
            
    if (connect == true) {        
            System.out.println("연결되었습니다.");
    } else {        
            System.out.println("연결실패.");
    }        

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=name %><br>
<%=menu %><br>
<%=price %><br>
<%=loc %><br>
<%=star %><br>
<%=tel %><br>
<%=time %><br>
</body>
</html>
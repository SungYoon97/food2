<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.spi.InitialContextFactory"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
	String email = request.getParameter("email");
 	String password = request.getParameter("password");
 	
 	//out.println(menu + " 에 " + "별점" +  star + " 점을 줬다.");
 	
  	// 점수를 DB에 저장
  	Connection conn = null;			
	Boolean connect = false;
	
try {	
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/kndb");
	conn = ds.getConnection();
	
	String sql = "SELECT * FROM users WHERE email = ? AND pw = ?;";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, email);
	pstmt.setString(2, password);
	ResultSet rs = pstmt.executeQuery();
	
	out.println("<script>");
	if (rs.next()){
		// 로그인 성공
		session.setAttribute("email", email);
		String name = rs.getString("name");
		out.println("alert('" + name + "님 반갑습니다.');");
		out.println("location.href='index.jsp'");
		
		
	} else {
		// 로그인 실패
		out.println("alert('정신 차리라! 틀릿다! 똑바로 치라!');");
	}
	out.println("</script>");
	connect = true;
	conn.close();
} catch (Exception e) {	
	connect = false;
	e.printStackTrace();
}	
	
if (connect == true) {	
	System.out.println("연결되었습니다.");
//	out.println(1);
} else {	
	System.out.println("연결실패.");
//	out.println(0);
}	
 %>

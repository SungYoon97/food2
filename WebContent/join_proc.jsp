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
 	String name = request.getParameter("name");
 	String phone = request.getParameter("phone");
 	String radio = request.getParameter("radio");
 	
 	//out.println(menu + " 에 " + "별점" +  star + " 점을 줬다.");
 	
 	System.out.println(email);
 	System.out.println(password);
 	System.out.println(name);
 	System.out.println(phone);
 	System.out.println(radio);

 	
  	// 점수를 DB에 저장
  	Connection conn = null;			
	Boolean connect = false;
	
try {	
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/kndb");
	conn = ds.getConnection();
	
	String sql = "INSERT INTO users (email, pw, name, phone, grade) VALUES (?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, email);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	pstmt.setString(5, radio);
	int ret = pstmt.executeUpdate();
	System.out.println("insert 쿼리 후: " + ret);
	
	out.println("<script>");
	if (ret == 1){
		// 가입 성공
		
		out.println("alert('회원가입이 정상적으로 처리되었습니다.');");
	} else {
		// 가입 실패
		out.println("alert('미안합니다. 시스템에 문제가...');");
		out.println("location.href='login.jsp'");
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

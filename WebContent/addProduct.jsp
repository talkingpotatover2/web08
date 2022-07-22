<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "insert into product values(?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String p_id = request.getParameter("p_id");
	String p_name = request.getParameter("p_name");
	String p_unitPrice = request.getParameter("p_unitPrice");
	String p_description = request.getParameter("p_description");
	String p_category = request.getParameter("p_category");
	String p_manufacturer = request.getParameter("p_manufacturer");
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, p_id);
		pstmt.setString(2, p_name);
		pstmt.setInt(3, Integer.parseInt(p_unitPrice));
		pstmt.setString(4, p_description);
		pstmt.setString(5, p_category);
		pstmt.setString(6, p_manufacturer);
		
		pstmt.executeUpdate();
	}catch(Exception e) {
		e.printStackTrace();
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<h3>상품 등록 성공</h3>
<a href="allProduct.jsp">상품 전체 목록 보기</a>
</body>
</html>
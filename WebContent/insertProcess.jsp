<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	
	try{
		String sql="insert into person0412 values(?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, dept);
		pstmt.setString(4, position);
		pstmt.setString(5, duty);
		pstmt.setString(6, phone);
		pstmt.executeUpdate();
		System.out.println("데이터 등록 성공");
%>
		<script>
			alert("등록이 완료되었습니다!");
			location.href="select.jsp";
		</script>
<%
	}catch(SQLException e){
		System.out.println("데이터 등록 실패");
	}
%>
		<script>
			alert("등록을 실패했습니다.");
			history.back(-1);
		</script>
</body>
</html>
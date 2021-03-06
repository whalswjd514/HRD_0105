<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String id=request.getParameter("id");
	
	try{
		String sql="select * from person0412 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			String name=rs.getString("name");
			String dept=rs.getString("dept");
			String position=rs.getString("position");
			String duty=rs.getString("duty");
			String phone=rs.getString("phone");
			System.out.println("데이터 조회 성공");
%>
<form name="form" method="post" action="updateProcess.jsp">
<h1>인사관리 사원정보변경 화면</h1>
<hr>
<table border="1" id="tab1">
	<tr>
		<th>사원번호</th>
		<td><input type="text" name="id" value="<%=id %>" id="in1"></td>
	</tr>
	<tr>
		<th>성명</th>
		<td><input type="text" name="name" value="<%=name %>" id="in1"></td>
	</tr>
	<tr>
		<th>소속부서</th>
		<td>
			<select name="dept" id="s1">
				<option value="인사부"<%if(dept.equals("인사부")){%>selected<%}%>>인사부</option>
				<option value="기획부"<%if(dept.equals("기획부")){%>selected<%}%>>기획부</option>
				<option value="홍보부"<%if(dept.equals("홍보부")){%>selected<%}%>>홍보부</option>
				<option value="영업부"<%if(dept.equals("영업부")){%>selected<%}%>>영업부</option>
				<option value="경리부"<%if(dept.equals("경리부")){%>selected<%}%>>경리부</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
			<select name="position" id="s1">
				<option value="1"<%if(position.equals("1")){%>selected<%}%>>1급</option>
				<option value="2"<%if(position.equals("2")){%>selected<%}%>>2급</option>
				<option value="3"<%if(position.equals("3")){%>selected<%}%>>3급</option>
				<option value="4"<%if(position.equals("4")){%>selected<%}%>>4급</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>직책</th>
		<td><input type="text" name="duty" value="<%=duty %>" id="in1"></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="text" name="phone" value="<%=phone %>" id="in1"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="button" value="변경" onclick="check()" id="btn1">
			<input type="button" value="취소" onclick="href='index.jsp'" id="btn1">
		</td>
	</tr>
</table>
<hr>
</form>
<script>
	function check(){
		if(document.form.id.value==""){
			alert("사번이 입력되지 않았습니다.");
			document.form.id.focus();
		}else if(document.form.name.value==""){
			alert("성명이 입력되지 않았습니다.");
			document.form.name.focus();
		}else if(document.form.dept.value==""){
			alert("직급이 입력되지 않았습니다.");
			document.form.dept.focus();
		}else{
			document.form.submit();
		}
	}
</script>
<%	
		}
	}catch(SQLException e){
		System.out.println("데이터 조회 실패");
		e.printStackTrace();
	}
%>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
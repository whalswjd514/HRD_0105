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
<h1>인사관리 사원정보삭제 화면</h1>
<form name="form" method="post" action="deleteProcess.jsp">
<hr>
<table border="1" id="tab3">
	<tr>
		<th>성명</th>
		<td><input type="text" name="name" id="in2"></td>
	</tr>
	<tr>
		<th>사원번호</th>
		<td><input type="text" name="id" id="in2"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="submit" value="삭제" id="btn2" onclick="check1()">
			<input type="reset" value="취소" id="btn2" onclick="location.href='index.jsp'">
		</td>
	</tr>
</table>
<hr>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
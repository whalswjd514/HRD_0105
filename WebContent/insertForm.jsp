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
<form name="form" method="post" action="insertProcess.jsp">
<h1>인사관리 사원등록 화면</h1>
<hr>
<table border=1 id="tab1">
	<tr>
		<th>사원번호</th>
		<td><input type="text" name="id" id="in1"></td>
	</tr>
	<tr>
		<th>성명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th>소속부서</th>
		<td>
			<select name="dept" id="s1">
				<option value="인사부" selected>인사부</option>
				<option value="기획부">기획부</option>
				<option value="홍보부">홍보부</option>
				<option value="영업부">영업부</option>
				<option value="경리부">경리부</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
			<select name="position" id="s1">
				<option value="1">1급</option>
				<option value="2">2급</option>
				<option value="3">3급</option>
				<option value="4">4급</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>직책</th>
		<td><input type="text" name="duty" id="in1"></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="text" name="phone" id="in1"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="button" value="등록" onclick="check()" id="btn1">
			<input type="button" value="취소" onclick="location.href='index.jsp'" id="btn1">
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
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	<h2>쿠키 객체 정보 확인</h2>
	<hr>
	<%
		//getCookies : Cookie 클래스로 만든 배열 객체
		Cookie[] cookies = request.getCookies();	//쿠키 배열을 리턴
		
		out.print("쿠키 객체의 개수 : " + cookies.length + "<br><br>");
		
		for(int i=0; i<cookies.length; i++){	//쿠키 객체 개수만큼
			out.print("쿠키의 이름 : " + cookies[i].getName() + "<br><br>");	//cookie의 name
			out.print("쿠키의 값 : " + cookies[i].getValue() + "<br><br>");	//cookie의 value
			out.print("<br><br>");
		}
	%>
	<br>
	<a href="cookieDelete.jsp">쿠키삭제</a>
</body>
</html>
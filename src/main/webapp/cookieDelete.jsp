<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<h2>쿠키 삭제하기</h2>
	<hr>
	<%
		//cookie의 배열 객체
		//지워달라 요청
		Cookie[] cookies = request.getCookies();
		
		for(int i=0; i<cookies.length; i++){	//쿠키 객체 개수만큼
			//쿠키의 유효기간을 0으로 설정하여 쿠키 삭제
			cookies[i].setMaxAge(0);
			//쿠키 객체를 웹 브라우저로 보냄(응답)
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookieCheck.jsp");
	%>
</body>
</html>
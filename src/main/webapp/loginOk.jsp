<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//getParameter : 문자열로 반환
		String mid = request.getParameter("id");	//form의 name(tiger)
		String mpw = request.getParameter("pw");	//form의 name(12345)
		
		if(mid.equals("tiger") && mpw.equals("12345")){
			//memberId와 memberId값(tiger) 모두 문자열로 
			Cookie cookie_id = new Cookie("memberId", mid);
			Cookie cookie_pw = new Cookie("memberPw", mpw);
			
			//쿠키 객체를 웹 브라우저로 보냄
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			out.print("안녕하세요 " + mid + "님 로그인하셨습니다.<br>");
			out.print("쿠키가 생성되었습니다.");
		}else{
			response.sendRedirect("login.jsp");	//(==하이퍼링크)
		}		
	%>
	<br>
	<a href="cookieCheck.jsp">쿠키정보 확인하기</a>
</body>
</html>
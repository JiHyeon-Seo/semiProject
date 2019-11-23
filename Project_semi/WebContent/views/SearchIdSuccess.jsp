<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL EL 을 쓰러면 얘를 임포트해야됨 -->
<!DOCTYPE html>
<html>
<head>
<style>
		div {
			border: 1px solid black;
			box-sizing: border-box;
			text-align: center;
		}

		#container {
			width: 800px;
			height: 800px;
		}

		#header {
			float: left;
			width: 100%;
			height: 10%;
		}

		#content {
			float: left;
			width: 100%;
			height: 85%;

		}

		#footer {
			float: left;
			width: 100%;
			height: 5%;
		}
		
		p {
		margin: 200px;
		}
		
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
		<div id="header"></div>
		<div id="content">
		<p>회원님의 아이디는 ${requestScope.memberId }입니다. </p>
		<!-- requestScope는 생략 가능하며, servlet에서 보내준 값을 이걸로 받는다.
		String형 하나라서 이렇게 받았지만 member객체거나 하면 member.~ 이런식으로 작성. -->

		</div>
		<div id="footer"></div>

	</div>

</body>
</html>
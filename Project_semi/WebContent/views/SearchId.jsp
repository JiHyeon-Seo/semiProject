<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>이용약관페이지</title>

<head>

<style>
div {
	border: 1px solid black;
	box-sizing: border-box;
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

table {
	margin-top: 150px;
}

h1 {
	text-align: center;
}
</style>
</head>

<body>

	<div id="container">
		<div id="header"></div>
		<div id="content">
			<h1>아이디찾기</h1>
			<center>
				<form action="/searchId" method="POST">
					<table>
						<tr>
							<td>이름</td>
							<td><input type="text" id="memberName" name="memberName"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="text" name="email" id="email"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" id="idCheckBtn" value="아이디찾기"></td>
						</tr>
					</table>
				</form>
			</center>



		</div>
		<div id="footer"></div>
	</div>


</body>
</html>
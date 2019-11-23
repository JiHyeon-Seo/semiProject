<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String memberId = request.getParameter("memberId");
%>

<!DOCTYPE html>
<html>
<script src="../../js/jquery-2.0.0.js"></script>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>

<head>

<style>
div {
	border: 1px solid black;
	box-sizing: border-box;
}

#header {
	width: 800px;
	height: 80px;
}

#content {
	width: 800px;
	height: 800px;
}

#footer {
	width: 800px;
	height: 80px;
}

#content2 {
	width: 400px;
	height: 800px;
}
</style>
</head>

<body>


	<div id="header"></div>
	<div id="content">
		<center>

			<form action="/Modify" method="POST" id="frm">
				<div id=content2>

					<h1>
						새로운 비밀번호를<br> 설정하세요
					</h1>
					<label>비밀번호 입력 : </label> <input type="text" name="pass1"><br>
					<label>비밀번호 재 입력 : </label> <input type="text" name="pass2"
						onkeyup="enterkey()"><br>
					<input type="hidden" name="memberId" value="<%=memberId %>">	
						 <input type="button"
						value="확인" id="sub2" onclick="fn_com()"><br>
				</div>

			</form>
		</center>
	</div>
	<div id="footer"></div>

	<script>
function fn_com() {

	var pass1 = $("input[name=pass1]").val();
	var pass2 = $("input[name=pass2]").val();
	
	if(pass1 == pass2) {
		$("#frm").submit();
	}else{
		alert("비밀번호가 잘못되었습니다.");
		
	}
}

function enterkey() { //엔터로 동작 가능
	if(window.event.keyCode == 13) {
		fn_com();
	}
}

	


</script>

</body>
</html>
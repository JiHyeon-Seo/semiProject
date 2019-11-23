<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

.answer {
	display: none;
}
</style>
</head>

<body>


	<div id="header"></div>
	<div id="content">
		<center>

			<form action="/SendMail" method="POST">
				<div id=content2>

					<h1>비밀번호 재설정</h1>

					<label>아이디 : </label> <input type="text" name="memberId"
						id="memberId"><br> <label>이메일주소 : </label> <input
						type="text" name="email" id="email"><br>
					<button type="button" onclick="SendMail()">이메일 전송</button>
					<br> <label class="answer">인증번호 입력</label><br> <input
						type="text" name="answer" class="answer"><br> <input
						type="button" value="확인" onclick="fn_checkNum()" id="emailCheck"
						class="answer">
				</div>

			</form>
		</center>
	</div>
	<div id="footer"></div>

	<script>
		var number = 0;

		function SendMail() {

			$.ajax({
				url : "/SendMail", //보내줄 주소 (처리할 서블릿)
				type : "POST",
				data : {
					memberId : $("#memberId").val(),
					email : $("#email").val()
				},//담는 곳이 있어야됨
				success : function(data) { //성공적으로 실행이 됬을때 data에 받아옴
					if (data != '3' && data != '2') {
						$("#content2")
								.append("<span>이메일 발송이 완료 되었습니다. </span>");
						number = data;
						$(".answer").show();
					} else {
						alert("올바르게 입력해주세요");
					}

				}
			});

		}

		function fn_checkNum() {
			// 데이터 내가 적은값이랑 메일로 온 인증번호 같은지 확인
			if ($("input[name=answer]").val() == number) {
				alert("인증번호가 확인되었습니다.");
				location.href = "/views/ModifyPwd.jsp?memberId="
						+ $("#memberId").val(); //주소로 원하는 정보 보낼수있음.아이디값
			} else {
				alert("실패");
			}

		}
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>로그인페이지</title>

<head>
<script src="../../js/jquery-2.0.0.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
		body {
			margin: 0px;
			padding: 0px;
		}

		div {
			border: 1px solid white;
			box-sizing: border-box;
		}

		#container {
			margin: 0 auto;
			width: 1000px;
			height: 1200px;
		}

		#header {
			float: left;
			width: 100%;
			height: 5%;
		}

		#content {
			float: left;
			width: 100%;
			height: 90%;
		}

		#footer {
			float: left;
			width: 100%;
			height: 5%;
		}

		#content1 {
			float: left;
			width: 280px;
			height: 100%;
		}

		#content2 {
			float: left;
			width: 400PX;
			height: 100%;
			font-size: 20px;
		}

		#content3 {
			float: left;
			width: 280px;
			height: 100%;
		}

		.text {
			width: 100%;
		}

		.form-group {
			width: 100%;
		}

		#check-btn {
			margin-top: 95px;
			margin-left: 10px;
		}

		#emailDiv {
			width: 100%;
		}

		#email {
			width: 46%;
			display: inline-block;
		}

		#email2 {
			width: 46%;
			display: inline-block;
		}

		#span1 {
			width: 5%;
			display: inline-block;
		}

		select {
			margin-top: 40px;
			width: 180px;
		}

		#join {
			width: 100%;
			height: 70px;
		}

		#sample6_postcode {
			width: 50%;
		}

		.formht {

			border: 1px solid red;
			height: 20px;
		}

		#pwd_Question {
			margin-top: 0px;
		}
</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<div id="container">
		<div id="header"></div>
		<div id="content">

			<div id="content1"></div>
			<div id="content2">
				<h1 style="text-align: center">회원가입</h1>
				<form action="/kakaoEnroll" method="post">
					
					

					
					<!-- 소셜 정보랑 우리사이트 필요정보랑 합쳐야되니까 hidden으로 세개 가져옴. -->
					<input type="hidden" name="memberId" value="${kakao.memberId }">
					<input type="hidden" name="memberPwd" value="${kakao.memberId }">
					<input type="hidden" name="email" value="${kakao.email }">
					
					<div class="form-group">
						<label for="memberName">이름</label> <input type="text"
							class="form-control text" id="memberName" name="memberName"
							onkeyup="return nameCheck()">
					</div>
					<div id="messageFour"></div>

					<div class="form-group" id="wrap">
						<label for="sample6_postcode" style="display: block">주소</label> <input
							type="text" id="sample6_postcode" placeholder="우편번호"
							class="form-control text" name="postcode" style="display: inline">
						<input type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기" id="postcodeBtn">
					</div>



					<div class="form-group" id="wap">
						<input type="text" id="sample6_address" placeholder="주소"
							class="form-control text" name="addr"><br>
					</div>

					<div class="form-group">
						<input type="text" id="sample6_detailAddress" placeholder="상세주소"
							class="form-control text" name="addr2" id="addr2" onkeyup="return addr2Check()">
					</div>
					<div class="form-group">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목"
							class="form-control text" name="addr3">
					</div>
					<div id="messageFive"></div>



					<div class="form-group" id="phoneDiv">
						<label for="phone">핸드폰번호</label><br> <input type="text"
							class="form-control text" name="phone" id="phone"
							onkeyup="return phoneCheck()">
					</div>
					<div id="messageSeven"></div>

					<div class="form-group" name="QuestionDiv">
						<label for="question">질문</label> <select class="form-control"
							id="pwd_Question" name="pwd_Question">
							<option>기억에 남는 추억의 장소는?</option>
							<option>자신의 보물 제1호는?</option>
							<option>인상깊게 읽은 책 이름은?</option>
							<option>내가 좋아하는 캐릭터는?</option>
						</select>
					</div>
					<div class="form-group" name="AnswerDiv">
						<label for="answer">답변</label> <input type="text"
							class="form-control text" id="pwd_Answer" name="pwd_Answer"
							onkeyup="return answerCheck()">
					</div>
					<div id="messageEgt"></div>



					<div class="form-group">
						<input type="submit" class="btn btn-primary" id="join"
							value="가입하기" onclick="return check()">
					</div>

				</form>
			</div>
			<div id="content3">

							</div>
		</div>

	</div>

	<script>
		window.onload = function() {
			message4 = document.getElementById("messageFour");
			message5 = document.getElementById("messageFive");
			message7 = document.getElementById("messageSeven");
			message8 = document.getElementById("messageEgt");
			message9 = document.getElementById()
			memberId = document.getElementById("memberId");
			memberPwd = document.getElementById("memberPwd");
			memberPwd_re = document.getElementById("memberPwd_re");
			memberName = document.getElementById("memberName");
			email = document.getElementById("email");
			email2 = document.getElementById("email2");
		}

		

	

		
		function nameCheck() {
			/* init(); */
			if (!(/^[가-힣]+$/.test(memberName.value))) {
				memberName.style.border = "1px solid red";
				message4.innerHTML = "이름은 한글(최소1글자)만 가능합니다.";
				return false;
			} else {
				memberName.style.border = "1px solid lightgray";
				message4.innerHTML = "";
			}
		};

		function phoneCheck() {
			/* init(); */
			var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
			if (!regExp.test(phone.value)) {
				phone.style.border = "1px solid red";
				message7.innerHTML = "- 을 넣어주세요.";
				return false;
			} else {
				phone.style.border = "1px solid lightgray";
				message7.innerHTML = "";
			}
		};

	

		function answerCheck() {
			if ($("#pwd_Answer").val() == "") {
				pwd_Answer.style.border = "1px solid red";
				message8.innerHTML = "답변을 입력해주세요.";
				return false;
			} else {
				pwd_Answer.style.border = "1px solid lightgray";
				message8.innerHTML = "";
			}
		};
		

		/* function init() {
			message1.innerHTML = ""; //아이디
			message2.innerHTML = ""; //비밀번호
			message3.innerHTML = ""; //비밀번호 확인
			message4.innerHTML = ""; //이름
			message5.innerHTML = ""; //주소
			message6.innerHTML = ""; //이메일
			message7.innerHTML = ""; //핸드폰번호
			memberId.style.border = "1px solid lightgray";
			memberPwd.style.border = "1px solid lightgray";
			memberPwd_re.style.border = "1px solid lightgray";
			memberName.style.border = "1px solid lightgray";
			
			email.style.border = "1px solid lightgray";
			email2.style.border = "1px solid lightgray";
			phone.style.border = "1px solid lightgray";

		} */

		function check() {
			if (memberName.value == "" && memberName.value.length == 0) {
				memberName.style.border = "1px solid red";
				message4.innerHTML = "이름을 입력하세요";
				return false;
			} else if (sample6_address.value == ""
					&& sample6_address.value.length == 0) {
				postcodeBtn.style.border = "1px solid red";
				message5.innerHTML = "주소를 입력하세요";
				return false;
			} else if (phone.value == "" && phone.value.length == 0) {
				phone.style.border = "1px solid red";
				message7.innerHTML = "핸드폰 번호를 입력하세요";
				return false;
			} else if (pwd_Answer.value == "" &&pwd_Answer.value.length == 0) {
				pwd_Answer.style.border = "1px solid red";
				message8.innerHTML = "답변을 입력해주세요.";
				return false;
			} else {
				return true;
				alert("회원가입에 성공하였습니다");
				window.location.href = "/views/Login.jsp";
			}
		}

		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
		
	
		
	
		
	</script>
</body>
</html>
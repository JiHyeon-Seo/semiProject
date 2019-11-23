<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="../js/jquery-2.0.0.js"></script>

<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>이용약관페이지</title>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
div {
	border: 1px solid white;
}

#container {
	width: 800px;
	height: 800px;
}

#header {
	float: left;
	text-align: center;
	padding-top: 30px;
	width: 100%;
	height: 10%;
}

#content {
	float: left;
	width: 100%;
	height: 85%;
}

#content1 {
	border: 1px solid black;
	margin: 0 auto;
	width: 40%;
	height: 40%;
}

#content2 {
	border: 1px solid black;
	margin: 0 auto;
	width: 40%;
	height: 60%;
}

#footer {
	float: left;
	width: 100%;
	height: 5%;
}

textarea {
	border: 1px solid white;
	margin-left: 34px;
	width: 259px;
	height: 96px;
}

#joinBtn {
	width: 100%;
}

input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	cursor: pointer;
	position: relative;
	padding-left: 25px;
	margin-right: 15px;
	font-size: 13px;
}

input[type=checkbox]+label:before {
	content: "";
	display: inline-block;
	width: 20px;
	height: 20px;
	margin-right: 10px;
	position: absolute;
	left: 0;
	bottom: 1px;
	background-color: #ccc;
	border-radius: 9px;
	box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px
		rgba(255, 255, 255, .8);
}

input[type=checkbox]:checked+label:before {
	content: "\2713";
	/* 체크모양 */
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
	font-size: 18px;
	font-weight: 800;
	color: #fff;
	background: #FFBB00;
	text-align: center;
	line-height: 18px;
}
</style>
</head>

<body>

	<form>
		<div id="container">

			<div id="header">
				<h1>PET.com</h1>
			</div>
			<div id="content">
				<div id="content1">
					<br>
					<h3>
						PET.com<br>이용약관에 동의해주세요
					</h3>
					<br> <input type="checkbox" id="check" class="checkbox-style"
						onclick="selectAll()" /> <label for="check">모두 동의합니다.</label>


					<textarea style="overflow: hidden; font-size: 12px;">전체 동의는 필수 및 선택정보에 대한 동의도 포함되어있으며, 개별적으로도 동의를 선택하실 수 있습니다. 선택항목에 대한 동의를 거부하시면 서비스 이용에 제한이 있을 수 있습니다.
               </textarea>
					<!--<p style="font-size: 12px; text-indent: 2em;">

                  전체 동의는 필수 및 선택정보에 대한 동의도 포함되어있으며, 개별적으로도 동의를 선택하실 수 있습니다. 선택항목에 대한 동의를 거부하시면 서비스 이용에 제한이 있을 수 있습니다.</p>-->
				</div>

				<div id="content2">
					<br> <input type="checkbox" id="check1" class="checkbox-style" />
					<label for="check1">만 14세 이상입니다.</label><br> <br> <input
						type="checkbox" id="check2" class="checkbox-style" /> <label
						for="check2">[필수]PET.com 이용약관 동의</label>
					<button type="button" class="btn btn-primary myBtn" data-toggle="modal"
						data-target="#myModal">></button>

					<!-- The Modal -->
					<div class="modal" id="myModal">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">PET.com계정 약관</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body font-size: 13px;">

									<h3>제 1 조 (목적)</h3>
									<br> <br> 주식회사 PET.com(이하 ‘회사’)가 제공하는 서비스를 이용해 주셔서
									감사합니다. 회사는 여러분이 다양한 인터넷과 모바일 서비스를 좀 더 편리하게 이용할 수 있도록 회사 또는 관계사의
									개별 서비스에 모두 접속 가능한 통합로그인계정 체계를 만들고 그에 적용되는 'PET.com계정 약관(이하 '본
									약관')을 마련하였습니다. 본 약관은 여러분이 PET.com계정 서비스를 이용하는 데 필요한 권리, 의무 및
									책임사항, 이용조건 및 절차 등 기본적인 사항을 규정하고 있으므로 조금만 시간을 내서 주의 깊게 읽어주시기
									바랍니다.<br> 제 2 조 (약관의 효력 및 변경)<br> <br> ① 본 약관의
									내용은 PET.com계정 웹사이트(https://accounts.kakao.com/weblogin/account)
									또는 개별 서비스의 화면에 게시하거나 기타의 방법으로 공지하고, 본 약관에 동의한 여러분 모두에게 그 효력이
									발생합니다.<br> ② 회사는 필요한 경우 관련법령을 위배하지 않는 범위 내에서 본 약관을 변경할 수
									있습니다. 본 약관이 변경되는 경우 회사는 변경사항을 시행일자 15일 전부터 여러분에게 서비스 공지사항에서 공지
									또는 통지하는 것을 원칙으로 하며, 피치 못하게 여러분에게 불리한 내용으로 변경할 경우에는 그 시행일자 30일
									전부터 PET.com계정에 등록된 이메일 주소로 이메일(이메일주소가 없는 경우 서비스 내 전자쪽지 발송, 서비스
									내 알림 메시지를 띄우는 등의 별도의 전자적 수단) 발송 또는 여러분이 등록한 휴대폰번호로 PET.com톡 메시지
									또는 문자메시지 발송하는 방법 등으로 개별적으로 알려 드리겠습니다.<br> ③ 회사가 전항에 따라 공지
									또는 통지를 하면서 공지 또는 통지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로
									본다는 뜻을 명확하게 고지하였음에도 여러분의 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다.
									여러분이 개정약관에 동의하지 않을 경우 여러분은 이용계약을 해지할 수 있습니다.<br> 제 3 조 (약관
									외 준칙)<br> <br> 본 약관에 규정되지 않은 사항에 대해서는 관련법령 또는 회사가 정한
									개별 서비스의 이용약관, 운영정책 및 규칙 등(이하 ‘세부지침’)의 규정에 따릅니다.<br>


								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>
					<br> <br> <input type="checkbox" id="check3"
						class="checkbox-style" /> <label for="check3">[필수]개인정보 수집
						및 이용 안내</label>
					<button type="button" class="btn btn-primary myBtn" data-toggle="modal"
						data-target="#myModal1">></button>


					<!-- The Modal -->
					<div class="modal" id="myModal1">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">개인정보 수집 및 이용동의</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<br>
								<!-- Modal body -->
								<div class="modal-body font-size: 13px;">
									(주)PET.com는 개인정보를 안전하게 취급하는데 최선을 다합니다.<br> 아래에 동의하시면 통합계정의
									프로필 정보를 (주)PET.com가 제공하는 PET.com계정 기반의 서비스에서 편리하게 이용하실 수 있습니다.<br>
									<br>

									<table border="1px solid gray;">
										<tr>
											<th>목적</th>
											<th>항목</th>
											<th>보유기간</th>
										</tr>
										<tr>
											<td>이용자 식별 및 회원관리, 프로필 정보 연동</td>
											<td>이메일,비밀번호, 이름, 프로필사진</td>
											<td colspan="2">회원 탈퇴 후 지체없이 삭제</td>
										</tr>
										<tr>
											<td>아이디, 비멀번호 찾기 시 본인 확인</td>
											<td>연락처(이메일, 전화번호 중 최소 1개는 필수)</td>

										</tr>
									</table>
									<br> 서비스 제공을 위해 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스 이용이 가능합니다.<br>
									(*1) (주)PET.com가 제공하는 이메일 서비스를 이용하는 경우 아이디를 수집합니다.<br>
									(*2) 맞춤형 컨텐츠 추천 및 마케팅 활용 목적으로 이용자 정보와 ‘쿠키’ 또는 ‘광고식별자’기반으로 수집된
									행태정보를 활용할 수 있습니다. 보다 자세한 내용 및 거부방법은 PET.com 맞춤형 광고 안내 페이지를
									확인해주세요.<br> 더 자세한 내용에 대해서는 PET.com 개인정보처리방침을 참고하시기 바랍니다.<br>
									<br>

								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>
					<br> <br> <input type="checkbox" id="check4"
						class="checkbox-style" /> <label for="check4">[선택]위치정보
						이용약관 동의 안내</label>
					<button type="button" class="btn btn-primary  myBtn" data-toggle="modal"
						data-target="#myModal2">></button>

					<!-- The Modal -->
					<div class="modal" id="myModal2">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">위치정보 수집 및 이용동의</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body font-size: 13px;">

									제1조 목적<br> 본 약관은 주식회사 PET.com(이하 “회사”)가 제공하는 위치기반서비스에 대해
									회사와 위치기반서비스를 이용하는 개인위치정보주체(이하 “이용자”)간의 권리·의무 및 책임사항, 기타 필요한 사항
									규정을 목적으로 합니다.<br> <br> 제2조 이용약관의 효력 및 변경<br> 1.
									본 약관은 이용자가 본 약관에 동의하고 회사가 정한 절차에 따라 위치기반서비스의 이용자로 등록됨으로써 효력이
									발생합니다.<br> 2. 회사는 법률이나 위치기반서비스의 변경사항을 반영하기 위한 목적 등으로 약관을
									수정할 수 있습니다.<br> 3. 약관이 변경되는 경우 회사는 변경사항을 최소 7일 전에 회사의 홈페이지
									등 기타 공지사항 페이지를 통해 게시합니다.<br> 4. 단, 개정되는 내용이 이용자 권리의 중대한
									변경이 발생하는 경우에는 30일 전에 게시하도록 하겠습니다.<br> <br> 제3조 약관 외
									준칙<br> 이 약관에 명시되지 않은 사항에 대해서는 위치 정보의 보호 및 이용 등에 관한 법률,
									전기통신사업법, 정보통신망 이용 촉진및 보호 등에 관한 법률 등 관계법령 및 회사가 정한 지침 등의 규정에
									따릅니다.<br> <br> 제4조 서비스의 내용<br> 회사는 직접 수집하거나
									위치정보사업자로부터 수집한 이용자의 현재 위치 또는 현재 위치가 포함된 지역을 이용하여 아래와 같은
									위치기반서비스를 제공합니다.<br> 1. 위치정보를 활용한 정보 검색결과 및 콘텐츠를 제공하거나 추천<br>
									<br> 2. 생활편의를 위한 위치 공유, 위치/지역에 따른 알림, 경로 안내<br> 3.
									위치기반의 컨텐츠 분류를 위한 콘텐츠 태깅(Geotagging)<br> 4. 위치기반의 맞춤형 광고<br>
									<br> 제5조 서비스 이용요금<br> 회사가 제공하는 위치기반서비스는 무료입니다.<br>
									단, 무선 서비스 이용 시 발생하는 데이터 통신료는 별도이며, 이용자가 가입한 각 이동통신사의 정책에 따릅니다.<br>



								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>

					<br> <br> <br> <br>
					<div id="checkError"></div>
					<input type="button" class="btn btn-primary" id="joinBtn"
						value="회원가입 하러 가기" onclick="fnclick()">

				</div>
			</div>
			<div id="footer"></div>
		</div>
	</form>


	<script>
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementsByClassName("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

		function selectAll() {
			if ($("#check").is(':checked')){
				$("input[type=checkbox]").prop("checked",true);
			}else{
				$("input[type=checkbox]").prop("checked",false);
			}
		}
		
		function fnclick() {
			if($("input:checkbox[id='check1']").is(":checked") && $("input:checkbox[id='check2']").is(":checked") && $("input:checkbox[id='check3']").is(":checked") && $("input:checkbox[id='check4']").is(":checked")== true){
					location.href='enroll.jsp';
			}
			else if(($("input:checkbox[id='check1']").is(":checked") && $("input:checkbox[id='check2']").is(":checked") && $("input:checkbox[id='check3']").is(":checked") == true)){
					location.href='enroll.jsp';
			}else if(($("input:checkbox[id='check2']").is(":checked") && $("input:checkbox[id='check3']").is(":checked") == true)){
					location.href='enroll.jsp';
			}
			else
			{
				$("#checkError").html("필수 약관에 동의해주세요");
			}
		}		
		

	</script>

</body>
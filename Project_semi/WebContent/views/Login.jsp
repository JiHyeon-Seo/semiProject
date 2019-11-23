<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:400,700,900&display=swap" rel="stylesheet">
  <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name = "google-signin-client_id"content = "493274456662-6cmnbvtf19vn08d8od8vbp687ut5gups.apps.googleusercontent.com">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="mainheader.css">
  <link rel="stylesheet" href="mainfooter.css">
	<link rel="stylesheet" href="maincontents.css">
	<link rel="stylesheet" href="login.css">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>


  <div class="container">
    <div class="contents">
		<div id="hedertitle"><a href="#" id="title">Pet.Com</a></div>
		<center>
		<div id="login">
		
			<center>
					<form action="/login">
					<input type="text" name="memberId" placeholder="아이디를 입력하세요." id="memberId"><br>
					<br> <input type="password" name="memberPwd"
						id="memberPwd" placeholder="비밀번호를 입력하세요"><br> <br> <span
						id="s1"></span>
					<input type="submit" class="btn btn-primary" value="로그인" style="width:300px;">
					
					</form>	
				<br>
					<form action="/views/terms.jsp" method="post">
						<a href="/views/enroll.jsp" class="btn btn-primary" value="회원가입" style="width:300px;">회원가입</a>
					</form>
				<br>
					<a href="/views/SearchId.jsp"><button type="button" class="btn btn-primary" name="idCheck" style="width:120px;">아이디찾기</button></a>
					<a href="/views/pwdCheck.jsp"><button type="button" class="btn btn-primary" name="pwdCheck" style="width:170px;">비밀번호 재설정</button></a><br>
				<a id="kakao-login-btn"></a><br>
				<div class="g-signin2" data-onsuccess="onSignIn"></div>
			
			
			
			</center>
		
		</div>
		</center>




      </div>
 
    
 
  </div>
	<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('2296d29244f2b57f965c1e4d6d2ce0ca'); //자바스크립트 API키 받은거 넣어주기
    // 카카오 로그인 버튼을 생성합니다.
       Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
          Kakao.Auth.loginForm({
               success: function(res) {
                  Kakao.API.request({
                       url: '/v2/user/me',
                       success: function(res) {
                        var id = res.id;
                        var email = res.kakao_account.email;
                        var gender = res.kakao_account.gender;
                        window.location.href="/kakaoLogin?id="+id+"&email="+email;
                       },
                       fail: function(error) {
                         alert(JSON.stringify(error));
                       }
                  })
               }
                 /* alert(JSON.stringify(res));
                 var id = res.id;
                 var email = res.kakao_account.email;
                 var gender = res.kakao_account.gender; */
                 //window.location.href="/kakaoTalkLogin?id="+id+"&email="+email+"&gender="+gender;
               ,
               fail: function(err) {
                 alert(JSON.stringify(err));
               }
            })
               
        
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }
    });
    
    
    //구글 로그인 API
       function onSignIn(googleUser) {
    	   var profile = googleUser.getBasicProfile();
    	 var id = profile.getId(); // Do not send to your backend! Use an ID token instead.
    	 var name = profile.getName();
    	 var email = profile.getEmail(); 
    	 window.location.href="/googleLogin?id="+id +"&name=" + name + "&email=" +email; //sendRedirect랑 똑같은것.  
    	 //이 url에 정보를 같이 실어서 보내는방법 ?물음표로 
    	 
    	   
    	   // This is null if the 'email' scope is not present.
    	 }
    
</script>
	</body>
</html>
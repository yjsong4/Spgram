<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
	
		<header class="d-flex justify-content-center">
			<h1 class="mt-5 text-secondary font-weight-bold">Join Spgram!</h1>
		</header>
		
		<section class="contents d-flex justify-content-center">
			<div class="join-box my-5">
				<input type="text" placeholder="이메일주소" class="form-control" id="emailInput">
				<input type="text" placeholder="성명" class="form-control mt-4" id="nameInput">
				
				<div class="position-relative">
					<input type="text" placeholder="사용자 이름" class="form-control mt-4" id="userNameInput">
					<button type="button" class="btn btn-info btn-small mt-1" id="duplicateBtn">중복확인</button>
				</div>
				<div class="check text-danger d-none" id="userNameWarning">중복된 userName 입니다.</div>
				<div class="check text-info d-none" id="userNameInfo">사용 가능한 userName 입니다.</div>
				
				<input type="text" placeholder="비밀번호" class="form-control mt-4" id="passwordInput">
				<button type="button" class="btn btn-secondary btn-block" id="joinBtn">가입하기</button>
			</div>
		</section>
		
		<hr class="my-2">
		<footer class="d-flex justify-content-center align-items-center text-italic font-italic">
			<div>
				Copyright ©2024 Spgram All rights reserved.
			</div>			
		</footer>
	
	</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		
		$("#duplicateBtn").on("click", function() {
			
			let userName = $("#userNameInput").val();
			
			if(userName == "") {
				alert("아이디를 입력하세요.");
				return;
			}
			
			$.ajax({
				type:"get"
				, url:"/user/duplicate-userName"
				, data:{"userName":userName}
				, success:function(data) {
					
					if(data.isDuplicate) {
						$("#userNameWarning").removeClass("d-none");
						$("#userNameInfo").addClass("d-none");
						
					} else {
						$("#userNameInfo").removeClass("d-none");
						$("#userNameWarning").addClass("d-none");
					}
					
				}
				, error:function() {
					alert("아이디 중복확인 에러");
				}
			});
			
		});
		
		$("#joinBtn").on("click", function() {
			
			let email = $("#emailInput").val();
			let name = $("#nameInput").val();
			let userName = $("#userNameInput").val();
			let password = $("#passwordInput").val();
			
			if(email == "") {
				alert("이메일을 입력하세요.");
				return;
			}
			if(name == "") {
				alert("이름을 입력하세요.");
				return;
			}
			if(userName == "") {
				alert("아이디를 입력하세요.");
				return;
			}
			if(password == "") {
				alert("비밀번호를 입력하세요.");
				return;
			}
			
			$.ajax({
				type:"post"
				, url:"/user/join"
				, data:{"email":email, "name":name, "userName":userName, "password":password}
				, success:function(data) {
					if(data.result == "success") {
						location.href = "/user/login-view";
					} else {
						alert("가입 실패");
					}
				}
				, error:function() {
					alert("가입 에러");
				}
					
			});
			
		});
	
	});

</script>

</body>
</html>
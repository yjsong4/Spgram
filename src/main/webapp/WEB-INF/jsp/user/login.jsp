<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />

		<section class="loginBox d-flex justify-content-center align-items-center">
			<div class="py-4">
				<img class="img-fluid logoImage" src="https://images.template.net/76869/Free-Instagram-Glyph-Vector.jpeg">
				<form id="loginForm">
					<input type="text" placeholder="Username" class="form-control" id="userNameInput">
					<input type="password" placeholder="••••" class="form-control mt-4" id="passwordInput">
					<button type="submit" class="btn btn-block text-white" id="loginBtn">LOGIN</button>
				</form>
				<div class="text-center"><a href="#">아직 계정이 없으신가요?</a></div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />

	</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		
		$("#loginForm").on("submit", function(e) {
			
			// submit 이벤트가 가진 고유의 기능을 취소
			e.preventDefault();
			
			let userName = $("#userNameInput").val();
			let password = $("#passwordInput").val();
			
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
				, url:"/user/login"
				, data:{"userName":userName, "password":password}
				, success:function(data) {
					if(data.result == "success") {
						location.href = "/post/feed-view";
					} else {
						alert("사용자이름과 비밀번호를 확인해주세요.");
					}
				}
				, error:function() {
					alert("로그인 에러");
				}
			});
			
		});
		
	});


</script>


</body>
</html>
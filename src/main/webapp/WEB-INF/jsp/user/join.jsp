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
			<h1 class="mt-5">가입하기</h1>
		</header>
		
		<section class="contents d-flex justify-content-center">
			<div class="join-box my-5">
				<input type="text" placeholder="이메일주소" class="form-control">
				<input type="text" placeholder="성명" class="form-control mt-4">
				<input type="text" placeholder="사용자 이름" class="form-control mt-4">
				<button type="button" class="btn-small">중복확인</button>
				<input type="text" placeholder="비밀번호" class="form-control mt-4">
				<button type="button" class="btn btn-secondary btn-block mt-5">가입하기</button>
			</div>
		</section>
		
		<footer class="d-flex justify-content-center align-items-center">
			<div>
				Copyright ©2024 Spgram All rights reserved.
			</div>			
		</footer>
	
	</div>


<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>
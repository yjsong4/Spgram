<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
		<header class="text-center">
			<div>
				<h1 class="mt-5 mb-0">SPgram</h1>
				<img class="img-fluid logo" src="https://images.template.net/76869/Free-Instagram-Glyph-Vector.jpeg">
			</div>
		</header>
		
		<section class="loginBox d-flex justify-content-center align-items-center">
			<div>
				<input type="text" placeholder="Username" class="form-control" id="userNameInput">
				<input type="password" placeholder="••••" class="form-control mt-4" id="passwordInput">
				<button type="button" class="btn btn-block text-white" id="loginBtn">LOGIN</button>
				<div class="text-center"><a href="#">아직 계정이 없으신가요?</a></div>
			</div>
		</section>

		<hr class="my-2 mt-5">
		<footer class="d-flex justify-content-center align-items-center text-italic font-italic">
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
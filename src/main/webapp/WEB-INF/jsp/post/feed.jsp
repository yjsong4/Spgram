<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 피드</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="contents">
			<div class="mt-5 pt-3 border rounded">
				<div class="plusDeleteBtn d-flex justify-content-end">
					<i class="feed-bi bi-plus-lg mr-1"></i>
					<i class="feed-bi bi-x-lg"></i>
				</div>
				
				<div class="imgBox d-flex justify-content-center align-items-top">
					<img class="coverImg" src="https://media.pitchfork.com/photos/65f1fd21a52ec7e13d476691/master/w_1600,c_limit/Dua-Lipa-Radical-Optimism.jpg">
				</div>
				
				<div class="socialBtn">
					<div>
						<i class="feed-bi bi-heart mr-1"></i>
						<i class="feed-bi bi-chat mr-1"></i>
						<i class="feed-bi bi-download"></i>
					</div>
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<input type="text" placeholder="Add a comment" class="mt-3 mr-2 form-control font-italic">
				<a href="#" class="mt-3"><i class="feed-bi bi-chevron-right"></i></a>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>
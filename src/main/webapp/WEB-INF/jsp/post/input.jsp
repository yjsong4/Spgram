<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="contents border rounded mt-5">
			<div class="photo-box d-flex justify-content-center align-items-center mt-5">		
				<i class="input-bi bi-camera mr-4"></i>
				<i class="input-bi bi-image"></i>
			</div>
			<div class="d-flex justify-content-center">
				<input type="file" id="fileInput" style="display: none;">
				<input type="button" class="btn btn-outline-success btn-sm upload-btn" value="upload" onclick="document.getElementById('fileInput').click();">
			</div>
			<hr align="center" width="85%">
			<div class="text-box m-4">
				<textarea class="form-control font-italic" style="height: 65%" placeholder="Write a caption" id="contentsInput"></textarea>
				<div>
					<button type="button" class="btn btn-outline-success btn-block" id="saveBtn">share</button>
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		
		$("#saveBtn").on("click", function() {
			let contents = $("#contentsInput").val();
			let file = $("#fileInput")[0].files[0];
			
			if(contents == "") {
				alert("내용을 입력하세요");
				return ;
			}
			
			// 파일 선택에 대한 유효성 검사
			if(file == null) {
				alert("이미지를 업로드 해주세요.");
				return;
			}
			
			let formData = new FormData();
			formData.append("contents", contents);
			formData.append("imageFile", file);
			
			$.ajax({
				type:"post"
				, url:"/post/create"
				, data:formData
				, enctype:"multipart/form-data"
				, processData:false
				, contentType:false
				, success:function(data) {
					if(data.result == "success") {
						location.href = "/post/list-view";
					} else {
						alert("게시글 작성 실패");
					}
				}
				, error:function() {
					alert("게시글 작성 오류");
				}
			});
			
		});
		
	});
</script>
</body>
</html>
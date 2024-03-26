<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<header class="d-flex align-items-center justify-content-between">
			<h1 class="mt-5 text-secondary font-weight-bold">SPgram</h1>
			<c:if test="${not empty id }">
			<div class="mb-5">${userName }<a href="/user/logout" class="ml-1">logout</a></div>
			</c:if>
		</header>
		<hr class="my-2">
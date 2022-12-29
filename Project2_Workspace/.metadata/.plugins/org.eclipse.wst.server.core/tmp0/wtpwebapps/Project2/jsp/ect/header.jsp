<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="/jsp/ect/header.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<header>
		<c:if test="${loginSession.id eq null }">
			<form class="header--login-off" action="/userC/login" method="post">
				<input type="text" name="id" placeholder="id">
				<input type="password" name="password" placeholder="password">
				<button type="submit">로그인</button>
				<button type="button" onclick="location.href = '/jsp/user/userSignUp.jsp'">회원가입</button>
			</form>
		</c:if>
		<c:if test="${loginSession.id ne null }">
			<div class="header--login-on">
				<a href="/jsp/post/postRegister.jsp">글쓰기</a>
				<div>환영합니다 ${loginSession.nickname }님</div>
				<a href="/jsp/user/userInfo.jsp">내정보</a>
				<a href="/userC/logout">로그아웃</a>
			</div>
		</c:if>
	</header>
</html>
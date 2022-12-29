<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			form{
			text-align: center;
			}
			.post-title-box{
				margin: 0 0 30px 0;
				white-space:nowrap;
				display: flex;
				justify-content: center;
			}
			.post-category{
				height: 42px;
				width: 100px;
				border: 1px solid black;
			}
			.post-title {
				width: 870px;
				height: 40px;
				border: 1px solid black;
				padding: 0 20px;
				margin-left: 30px;
			}
			.post-content{
				width: 1000px;
				height: 500px;
				border: 1px solid black;
				padding: 20px;
			}
		</style>
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>
				<div class="title">글 쓰기</div>
				<form action="/postC/postRegister" method="">
					<input type="hidden" name="id" value="${loginSession.id }">
					<input type="hidden" name="nickname" value="${loginSession.nickname }">
					<div class="post-title-box">
						<select class="post-category" name="category">
						    <option value="일상">일상</option>
						    <option value="Java">Java</option>
						    <option value="Database">Database</option>
						    <option value="HTML">HTML</option>
						    <option value="CSS">CSS</option>
						    <option value="JavaScript">JavaScript</option>
						</select>
						<input class="post-title" type="text" name="title" placeholder="title">
					</div>
					<textarea class="post-content" name="content" placeholder="content"></textarea><br>
					<button class="defaultButton" type="submit">제출</button>
				</form>
			</section>
		</div>
	</body>
</html>
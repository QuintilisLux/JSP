<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.signUp--form{
				margin: 0 auto;
			}
			.signUp--form > input{
				width: 300px;
				height: 40px;
				border: 2px solid gray;
				margin: 10px;
				outline: none;
				text-indent: 10px;
			}
		</style>
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>
				<div class="container">
					<div class="title">회원가입</div>
					<form class="signUp--form" action="/userC/signUp" method="post">
						<input type="text" name="id" placeholder="아이디"><br>
						<input type="password" name="password" placeholder="비밀번호"><br>
						<input type="password" name="password_check" placeholder="비밀번호 확인"><br>
						<input type="text" name="nickname" placeholder="닉네임"><br>
						<button class="defaultButton" type="button" onclick="formCheck()">제출</button>
					</form>
				</div>
			</section>
		</div>
		<script type="text/javascript">
			let signUpResult = '<c:out value="${signUpResult}"/>';
			
			const form = document.querySelector('.signUp--form');
			function formCheck() {
				if(document.getElementsByName("id")[1].value == ""
					|| document.getElementsByName("password")[1].value == ""
					|| document.getElementsByName("password_check")[0].value == ""
					|| document.getElementsByName("nickname")[0].value == ""){
					alert("빈칸을 확인해주세요");
					return false;
				} else if(document.getElementsByName("password")[1].value != document.getElementsByName("password_check")[0].value) {
					alert("비밀번호를 확인해주세요");
					return false;
				}
				form.submit();
			}
			console.log(signUpResult)
			if(signUpResult == '0'){
				alert("이미 사용중인 아이디 입니다");
			}
		</script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.edit-form > table {
				border-collapse:collapse;
				margin: 20px auto;
			}
			.table-top{
				border-top: 1px solid rgb(176, 175, 175);
			}
			th, td {
				height: 41px;
				padding: 7px 30px;
				border-bottom: 1px solid rgb(176, 175, 175);
			}
			th {
				text-align: left;
				min-width: 120px;
				border-right: 1px solid rgb(176, 175, 175);
			}
			td {
				text-align: center;
				min-width: 300px;
			}
			td > input {
				border: none;
				border-bottom: 1px solid rgb(176, 175, 175);
				width: 200px;
				height: 30px;
				text-align: center;
				outline: none;
			}
		</style>
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>
				<div class="container">
					<div class="title">정보 변경</div>
					<form name="edit-form" class="edit-form" action="/userC/userUpdate" method="post">
						<table>
							<tr class="table-top">
								<th>아이디</th>
								<td>${loginSession.id }<input type="hidden" name="id" value="${loginSession.id }"></td>					
							</tr>
							<tr>
								<th>닉네임</th>
								<td><input type="text" name="nickname" value="${loginSession.nickname }"></td>					
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="password" value=""></td>					
							</tr>
						</table>
						<button class="defaultButton" type="button" onclick="formCheck()">변경</button>
					</form>
				</div>
			</section>
		</div>
		<script type="text/javascript">
			let updateResult = '<c:out value="${updateResult}"/>';
			const form = document.querySelector('.edit-form');
			function formCheck() {
				if(document.getElementsByName("nickname")[0].value == ""
					|| document.getElementsByName("password")[0].value == ""){
					alert("빈칸을 확인해주세요");
					return false;
				}
				form.submit();
			}
			console.log(updateResult)
			if(updateResult == '0'){
				alert("비밀번호를 확인해주세요");
			}
		</script>
	</body>
</html>
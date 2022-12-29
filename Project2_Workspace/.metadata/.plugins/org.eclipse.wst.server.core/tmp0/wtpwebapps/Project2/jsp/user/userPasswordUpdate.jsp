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
					<div class="title">비밀번호 변경</div>
					<form name="edit-form" class="edit-form" action="/userC/userPasswordUpdate" method="post">
						<input type="hidden" name="id" value="${loginSession.id }">
						<table>
							<tr class="table-top">
								<th>현재 비밀번호</th>
								<td><input type="password" name="password" value=""></td>					
							</tr>
							<tr>
								<th>새 비밀번호</th>
								<td><input type="password" name="new_password" value=""></td>					
							</tr>
							<tr>
								<th>새 비밀번호 확인</th>
								<td><input type="password" name="new_password_check" value=""></td>					
							</tr>
						</table>
						<button class="defaultButton" type="button" onclick="formCheck()">수정</button>
					</form>
				</div>
			</section>
		</div>
		<script type="text/javascript">
			let updateResult = '<c:out value="${updateResult}"/>';
			const form = document.querySelector('.edit-form');
			function formCheck() {
				if(document.getElementsByName("password")[0].value == ""
					|| document.getElementsByName("new_password")[0].value == ""
					|| document.getElementsByName("new_password_check")[0].value == ""){
					alert("빈칸을 확인해주세요");
					return false;
				} else if(document.getElementsByName("new_password")[0].value != document.getElementsByName("new_password_check")[0].value) {
					alert("새 비밀번호를 확인해주세요");
					return false;
				}
				form.submit();
			}
			console.log(updateResult)
			if(updateResult == '0'){
				alert("현재 비밀번호를 확인해주세요");
			}
		</script>
	</body>
</html>
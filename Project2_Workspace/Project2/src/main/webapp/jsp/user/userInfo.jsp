<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table {
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
		</style>
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>
				<div class="container">
					<div class="title">마이페이지</div>
					<table>
						<tr>
							<th class="table-top">아이디</th>
							<td class="table-top">${loginSession.id }</td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td>${loginSession.nickname }</td>
						</tr>
						<tr>
							<th>가입일</th>
							<td>${loginSession.regdate }</td>
						</tr>
					</table>
					<button class="defaultButton" type="button" onclick="location.href='/jsp/user/userUpdate.jsp'">정보 변경</button>
					<button class="defaultButton" type="button" onclick="location.href='/jsp/user/userPasswordUpdate.jsp'">비빌번호 변경</button>
				</div>
			</section>
		</div>
	</body>
</html>
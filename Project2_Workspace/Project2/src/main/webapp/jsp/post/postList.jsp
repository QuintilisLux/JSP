<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.post-item{
				padding: 20px;
				border-bottom: 1px solid gainsboro;
			}
			.post-item > a{
				text-decoration: none;
			}
			.post-item--title{
				font-size: 30px;
				margin: 0 10px 0 0;
				display: inline-block;
			}
			.post-item--category{
				color: gray;
				display: inline-block;
			}
			.post-item--content{
				margin: 20px 0;
			}
			.post-item--regdate{
				text-align: right;
			}
		</style>
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>
				<div class="title">게시글</div>
				<c:forEach items="${list }" var="postVO">
					<div class="post-item">
						<a href="/postC/postDetail?num=${postVO.num }">
							<div class="post-item--title">${postVO.title }</div>
						</a>
						<div class="post-item--category">${postVO.category }</div>
						<a href="/postC/postDetail?num=${postVO.num }">
							<div class="post-item--content">${postVO.content }</div>
						</a>
						<div class="post-item--regdate">${postVO.regdate }</div>
						
					</div>
				</c:forEach>
			</section>
		</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="/jsp/ect/aside.css" />
	<aside>
		<div class="aside--move-box">
			<div class="aside--img">
				<img alt="" src="/image/me2.jpg">
			</div>
			<div class="aside--name">Wonhee Park</div>
			<div class="aside--category">
				<ul>
					<li><a href="/">About Me</a></li>
					<li class="aside--post">
						<a href="/postC/postList">Post</a>
						<a href="" class="aside--post-hidden">일상</a>
						<a href="" class="aside--post-hidden">Java</a>
						<a href="" class="aside--post-hidden">DataBase</a>
						<a href="" class="aside--post-hidden">HTML</a>
						<a href="" class="aside--post-hidden">CSS</a>
						<a href="" class="aside--post-hidden">JavaScript</a>
					</li>
					<li><a href="">Guest Book</a></li>
				</ul>
			</div>
			<div class="aside--info">
				<ul>
					<li>Tel. 010-5003-3308</li>
					<li>Fax. 00-0000-0000</li>
					<li>E-mail. alzkdpf1783@gmail.com</li>
					<li>Addr. Incheon, Korea</li>
				</ul>
			</div>
			<div class="aside--sns">
				<a href="" target="_blank"><span class="fa fa-facebook-f"></span></a>
				<a href="" target="_blank"><span class="fa fa-instagram"></span></a>
				<a href="" target="_blank"><span class="fa fa-twitter"></span></a>
			</div>
		</div>
	</aside>
	<script type="text/javascript">
		let loginFail = '<c:out value="${loginFail}" ></c:out>';
		if(loginFail == '0'){
			alert("아이디와 비밀번호를 다시 확인해주세요")
		}
	</script>
</html>
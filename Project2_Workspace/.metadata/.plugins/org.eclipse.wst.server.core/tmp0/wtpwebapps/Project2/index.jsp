<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/jsp/ect/index.css" />
	</head>
	<body>
		<c:import url="/jsp/ect/header.jsp"></c:import>
		<div class="main">
			<c:import url="/jsp/ect/aside.jsp"></c:import>
			<section>	
				<p class="index--comment-kor">
					결코 지금에 만족하지 말자,<br>
					항상 조금씩이라도 완벽에 가까워지려고 노력하자.<br>
					중요한 것은 꺾이지 않는 마음.<br>
				</p>
				<p class="index--comment-eng">
					Let's never be satisfied with the present<br>
					Let's always try to get a little closer to perfection.<br>
					The important thing is an unbroken heart.<br>
				</p>
				<div class="aboutMe">
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<h2>About Me</h2>
						</div>
					</div>
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<strong>경험 및 경력</strong><br>
							<p>I don't want a lot for Christmas There is just one thing I need I don't care about the presents underneath the Christmas tree I just want you for my own More than you could ever know Make my wish come true All I want for Christmas is you Yeah</p>
						</div>
						<div class="aboutMe--div--div">
							<strong>좋아하는 것</strong><br>
							<p>I don't want a lot for Christmas There is just one thing I need (and I) Don't care about the presents underneath the Christmas tree I don't need to hang my stocking there upon the fireplace Santa Claus won't make me happy with a toy on Christmas Day, 민희</p>
						</div>
					</div>
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<strong>활동</strong><br>
							<p>I just want you for my own More than you could ever know Make my wish come true All I want for Christmas is you You, baby</p>
						</div>
						<div class="aboutMe--div--div">
							<strong>성격</strong><br>
							<p>Oh, I won't ask for much this Christmas I won't even wish for snow (and I) I'm just gonna keep on waiting underneath the mistletoe I won't make a list and send it to the North Pole for Saint Nick I won't even stay awake to hear those magic reindeer click</p>
						</div>
					</div>
				</div>
				<div class="aboutMe">
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<h2>Wonhee Park</h2>
						</div>
					</div>
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<strong>Birth</strong><br>
							<p>1997-07-25</p>
						</div>
						<div class="aboutMe--div--div">
							<strong>Tel</strong><br>
							<p>010-5003-3308</p>
						</div>
						<div class="aboutMe--div--div">
							<strong>E-mail</strong><br>
							<p>alzkdpf1783@gmail.com</p>
						</div>
					</div>
					<div class="aboutMe--div">
						<div class="aboutMe--div--div">
							<div>							
								<img alt="" src="/image/me2.jpg">
							</div>
						</div>
					</div>
				</div>
				<div class="project">
					<div class="project--h2">
						<h2>Project</h2>
					</div>
					<div class="project--item">
						<div class="project--img modal-button">						
							<img alt="" src="/image/project0_1.JPG">
						</div>
						<div class="project--content">
							<strong>EZEN Funnyour</strong>
							<p>볼거라곤 디자인밖에 없는 가구 판매점.<br>메인화면, 카테고리, 제품 상세페이지, 장바구니, 게시판 구현</p>
							<strong>Using skill</strong>
							<p>HTML, CSS, JavaScript</p>
						</div>
					</div>
					<div class="project--item">
						<div class="project--img modal-button2">
							<img alt="" src="/image/project1_0.JPG">
						</div>
						<div class="project--content">
							<strong>EZEN Nolja</strong>
							<p>회원들간의 소통이 가능한 커뮤니티<br>회원가입, 정보수정, 글과 댓글의 작성, 수정, 삭제, 검색, 페이징</p>
							<strong>Using skill</strong>
							<p>HTML, CSS, JavaScript, JSP, mySQL, Mybatis, JSTL</p>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="modal">
			<div class="popup">
				<img id="popup-img" alt="" src="">
			</div>
		</div>
		<script type="text/javascript">
			document.querySelector(".modal-button").addEventListener("click", show);
			document.querySelector(".modal-button2").addEventListener("click", show2);
			document.querySelector(".modal").addEventListener("click", close);
			function show() {
				document.querySelector("#popup-img").src = "/image/project0_1.JPG"
				document.querySelector(".modal").className = "modal show";
			}
			function show2() {
				document.querySelector("#popup-img").src = "/image/project1_1.JPG"
				document.querySelector(".modal").className = "modal show";
			}
			function close() {
				document.querySelector(".modal").className = "modal";
			}
		</script>
	</body>
</html>
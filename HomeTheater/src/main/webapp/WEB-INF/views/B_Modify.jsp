<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>movie</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
<link rel="stylesheet" href="resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">

<style type="text/css">
.BT_mo {
	background-color: #4e4e5d00;
	border: solid 2.5px #61adff;
	border-radius: 20px;
	color: #61adff;
	font-size: small;
	padding: 4.5px 9.5px;
}

.BT_de {
	background-color: #4e4e5d00;
	border: solid 2.5px #ff4456;
	border-radius: 20px;
	color: #ff4456;
	font-size: small;
	padding: 4.5px 9.5px;
}

table {
	color: white;
	background-color: #4e4e5d;
	margin-left: auto;
	margin-right: auto;
	width: 90%;
}

textarea {
	background-color: #f0ffff00;
	overflow: visible;
	border: 0;
	color: white;
}

.text {
	background-color: #f0ffff00;
	overflow: visible;
	border: 0;
	color: white;
}

.title {
	padding-top: 3%;
	padding-left: 6%;
	padding-bottom: 3%;
	font-size: xxx-large;
	border-bottom: 1.5px solid #7e7e8e;
}

.wrhit {
	padding-top: 2%;
	padding-left: 7%;
	font-size: larger;
}

.date {
	color: 909090;
	font-size: xx-small;
	padding-left: 8%;
	padding-bottom: 5px;
	border-bottom: 1.5px solid #0b0c2a;
	font-size: xx-small;
}

.content {
	padding-bottom: 5%;
	padding-left: 7%;
	padding-top: 5%;
	font-size: x-large;
}

.file {
	padding-left: 10%;
}

.no {
	padding-right: 10%;
	padding-bottom: 3%;
	padding-top: 10%;
	float: right;
	font-size: smaller;
	padding-top: 10%;
}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
					<div class="header__logo">
						<a href="index"> <img src="resources/img/logo5-1.png"
							alt="">
						</a>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li class="active"><a href="index">메인화면</a></li>
								<!-- 이거도 로딩 컨트롤러로 -->
								<li><a href="#">작품목록<span class="arrow_carrot-down"></span></a>
									<ul class="dropdown">
										<li><a href="index?filter=1">인기순</a></li>
										<!-- href : 각 카테고리별 리스트 로딩하는 컨트롤러로 -->
										<li><a href="index?filter=2">이름순</a></li>
										<li><a href="index?filter=3">최신 개봉순</a></li>
									</ul></li>
								<li><a href="B_board">게시판</a></li>
								<c:if test="${sessionScope.loginId eq 'admin'}">
									<li><a href="C_addForm">콘텐츠 추가</a></li>
									<li><a href="M_list">회원목록</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="header__menu mobile-menu">
					<c:choose>
						<c:when test="${empty sessionScope.loginId}">
						<ul>
						<li><a href="#" class="search-switch"><span class="icon_search"></span></a></li>
						
						<li><a href="#"><span class="icon_profile"><span class="arrow_carrot-down"></span></span></a>	
									<ul class="dropdown">
										<li><a href="M_loginForm">로그인</a></li>
										<li><a href="M_joinForm">회원가입</a></li>
									</ul></li>
						</ul>						
						</c:when>
						<c:otherwise>
						<ul>
						<li><a href="#" class="search-switch"><span class="icon_search"></span></a></li>
						
						<li><a href="#"><span class="icon_profile"><span class="arrow_carrot-down"></span></span></a>	
									<ul class="dropdown">
										<li><a href="M_loginForm">로그아웃</a></li>
										<li><a href="M_view?MId=${sessionScope.loginId}">내정보보기</a></li>
									</ul></li>
						</ul>	
						</c:otherwise>
					</c:choose>
						
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<!-- Header End -->

	
	<!---------------- B_Modify 시작 ------------------->
	<section class="blog-details spad"
		style="margin-bottom: 50%; padding: 0px;">
		<div class="container"
			style="margin-top: 20px; margin-bottom: 20%; min-width: 300px; right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto;">
			<div class="row d-flex justify-content-center"
				style="margin-right: -100px; margin-left: -100px;">
				<div class="col-lg-8">
					<div class="blog__details__content" style="min-width: 500px;">

						<div>
							<form action="B_modify" method="POST"
								enctype="multipart/form-data">

								<table>
									<tr>
										<td class="title"><input type="text" class="text"
											name="BTITLE" placeholder="${modify.BTITLE}"></td>
									</tr>
									<tr>
										<td class="wrhit" colspan="2">작성자 : ${modify.BWRITER} 조회수
											: [ ${modify.BHIT} ] </td>
									</tr>
									<tr>
										<td class="content"><textarea rows="20" cols="40"
												name="BCONTENT" placeholder="${modify.BCONTENT}"></textarea></td>
									</tr>
									<tr>
										<td><input style="padding-left: 7%; padding-bottom: 5%;"
											type="file" name="BFILE"></td>
									<tr>
										<td
											style="float: right; margin-right: 5%; margin-bottom: 10px;">
											<input type="hidden" name="BNO" value="${modify.BNO}">
											<input type="hidden" name="page" value="${page}"> <input
											type="hidden" name="BWRITER" value="${modify.BWRITER}">
											<input class="BT_mo" type="submit" value="게시물 수정">
										</td>
									</tr>


								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!---------------- B_Mpdify 끝 ------------------->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="page-up">
			<a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer__logo">
						<a href="index"><img src="resources/img/logo5-1.png"
							alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer__nav">
						<ul>
							<li class="active"><a href="index">Homepage</a></li>
							<li><a href="B_board">게시판</a></li>			<!-- 여기도 로딩 컨트롤러로 -->
							<li><c:if test="${empty sessionScope.loginId}">
									<a href="M_loginForm">로그인</a>
								</c:if> <!-- 로그인 페이지로 --> 
								<c:if test="${!empty sessionScope.loginId}">
									<a href="M_logout">로그아웃</a>
								</c:if> <!-- 로그아웃 페이지로 --></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						인천일보아카데미 &copy;
						<script>document.write(new Date().getFullYear());   </script> |      
						This Project is made with <i
						class="fa fa-heart" aria-hidden="true"></i> by HomeTheater
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>

				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->


<!-- Js Plugins -->
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/player.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/mixitup.min.js"></script>
<script src="resources/js/jquery.slicknav.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/main.js"></script>

</body>

<script type="text/javascript">
	window.history.forward();

	function noBack() {
		window.history.forward();
	}
</script>


</html>
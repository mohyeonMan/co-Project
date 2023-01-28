<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<link rel="stylesheet" href="/team_project/resources/css/container.css">
<link rel="stylesheet" href="/team_project/resources/css/modal.css">

<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
.rolling-listed-item{
	scroll-behavior : smooth;
}
#container .content {
    width: 90%;
    max-width: 100%;
    margin: 0 auto;
    position: relative;
    margin-bottom: 40px;
    min-height: 600px;
    background-color: #f6f6f6;
}
#container .content .main-default-video{
    width: 1248px;
    max-width: 100%;    
    margin-left : 20px;
    position: relative;
    margin-bottom: 40px;
    min-height: 600px;
    background-color: #f6f6f6;
}
@media (max-width: 1660px)
.main-ranking, .content, .notice-entire .inner, .footer-content {
    padding-left: 60px !important;
}
#container .main-default-video .title {
    padding-top: 45px;
    padding-bottom: 45px;
    position: relative;
    display: flex;
    align-items: center;
}
#container .main-default-video .title h1 {
    font-size: 20px;
    flex: 1;
    font-weight: 400;
}
#container .main-default-video .title a.all-target {
    color: #b6b6b6;
    font-size: 16px;
    margin-right: 20px;
}
#container .main-default-video .default-listed-item {
    overflow: hidden;
    position: relative;
    padding-bottom: 20px;
}
#container .main-default-video .default-listed-item ul {
    overflow: hidden;
}
#container .main-default-video .default-listed-item ul .flex-listed {
    display: flex;
    width: 100%;
    max-width: 100%;
}
#container .main-default-video .default-listed-item ul li {
    width: 236.81px;
    max-width: 100%;
    float: left;
    margin-right: 16px;
    transition: transform 0.3s;
}
#container .main-default-video .default-listed-item ul li .thumb {
    position: relative;
    width: 100%;
    max-width: 100%;
    overflow: hidden;
    padding-top: 140%;
    display: block;
    border-radius: 3px;
}
#container .main-default-video .default-listed-item ul li .thumb img {
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
}
#container .main-default-video .default-listed-item ul li .thumb::after {
    content: "";
    display: block;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 20px;
    z-index: 1;
    background: linear-gradient(transparent, rgba(20, 20, 20, 0) 20%, rgba(20, 20, 20, 0.2) 50%, rgba(20, 20, 20, 0.5));
}
#container .main-default-video .default-listed-item ul li .posted-info {
    position: relative;
    display: flex;
    flex-direction: column;
    padding-top: 15px;
}
#container .main-default-video .default-listed-item ul li .posted-info .subject {
    font-size: 15px;
}
#container .main-default-video .default-listed-item ul li .posted-info .subject a {
    color: #172126;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    overflow: hidden;
    text-decoration: none;
}
</style>
</head>
<body>

<%-- <jsp:include page="/WEB-INF/product/productList.jsp"/> --%>
<div id="container">
	<div class="main-ranking">
		<div class="rolling-list">
			<div class="coordinates">
				<div class="title">
					<h1>지금 나에게 필요한 인기 매물</h1>
				</div>
				<div class="btn">
					<div class="inner">
						<a id="rightScroll">
							<i class="bi bi-caret-left"></i>
						</a>
						<a id="leftScroll">
							<i class="bi bi-caret-right"></i>
						</a>
					</div>
				</div>
			</div>
			
			
			<div class="rolling-listed-item swiper-container swiper-container-initialized swiper-container-horizontal">
				<ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
					<div class="swiper-slide swiper-slide-active">
						<div class="flex-rolling">
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="/team_project/resources/img/tmdnlcl.jpeg" class="lazy" alt="대표이미지" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#" style="color: white;">스위치 팔아요~ </a>
									</p>
									<span class="tag">현재가 : </span><span class="nowprice" style="color: white;"> 22 </span><br>
									<span class="tag">낙찰가 : </span><span class="endprice" style="color: white;"> 22 </span><br>
									<div class="like">
										<a href="/team_project/product/productView?product_seq=35" class="btn btn-primary" style="color: white; background-color: #172126; --bs-btn-border-color: white;">응찰하러가기</a>
									</div>
								</div>
							</li>
						</div>
					</div>
				</ul>
			</div>
		</div>
	</div>
	<br><br>
	
	
	
	
	
	
	
	
	<div class="content">
		<div id="drama-update" class="main-default-video">
		
			
			<div class="title">
				<h1>최신 매물을 확인해 보세요.</h1>
				<a href="https://noonoo.tv/drama" class="all-target"> 전체보기
					<i class="fal fa-angle-right"></i>
				</a>
			</div>
			<div class="default-listed-item">
				<ul>
					<div class="flex-listed">
						<li>
							<a href="#" class="thumb">
								<img src="/team_project/resources/img/loading.git" class="new" alt="대표이미지" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#" class="new"> </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="/team_project/resources/img/loading.git" class="new" alt="대표이미지" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#" class="new"> </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="/team_project/resources/img/loading.git" class="new" alt="대표이미지" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#" class="new"> </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="/team_project/resources/img/loading.git" class="new" alt="대표이미지" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#" class="new"> </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="/team_project/resources/img/loading.git" class="new" alt="대표이미지" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#" class="new"> </a>
								</p>
							</div>
						</li>
					</div>
				</ul>
			</div>
			
			
			<div class="title">
				<h1>디지털/가전</h1>
				<a href="https://noonoo.tv/drama" class="all-target"> 전체보기
					<i class="fal fa-angle-right"></i>
				</a>
			</div>
			<div class="default-listed-item">
				<ul>
					<div class="flex-listed">
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
					</div>
				</ul>
			</div>
			
			
			<div class="title">
				<h1>아웃도어/스포츠</h1>
				<a href="https://noonoo.tv/drama" class="all-target"> 전체보기
					<i class="fal fa-angle-right"></i>
				</a>
			</div>
			<div class="default-listed-item">
				<ul>
					<div class="flex-listed">
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
					</div>
				</ul>
			</div>
			
			
			<div class="title">
				<h1>홈/생활</h1>
				<a href="https://noonoo.tv/drama" class="all-target"> 전체보기
					<i class="fal fa-angle-right"></i>
				</a>
			</div>
			<div class="default-listed-item">
				<ul>
					<div class="flex-listed">
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
						<li>
							<a href="#" class="thumb">
								<img src="https://images.nstatic.org/info/tv/153496/wFhRbJvcK5noXy3K3pBpw6UMDfQ.jpg" class="lazy" alt="재벌집 막내아들" style="display: block;">
							</a>
							<div class="posted-info">
								<p class="subject">
									<a href="#">재벌집 막내아들 </a>
								</p>
							</div>
						</li>
					</div>
				</ul>
			</div>
		</div>
	</div>
</div>





<div id="header">
	<div id="headerLeft">
		<a id="categoryBtn">
			<span class="list"><i class="bi bi-list"></i></span>
			<span class="close">
				<i class="bi bi-x-lg"></i>
			</span>
		</a>
		<img src="/team_project/resources/img/logo1.jpeg" alt="로고" id="logo">
		<h1 id="nameTag"> <i class="bi bi-person-circle" style="font-size: 1.1em;"></i> ${name}님 환영합니다. </h1>
		<span id="clock"></span>
	</div>
	
	<div id="headerRight_login">
		<a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a> / <a>회원가입</a> / <a>공지사항</a>
	</div>
	<div id="headerRight_logout">
		<a href="#" id="logoutBtn">로그아웃</a>
	</div>
	
</div>





<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 100px">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">로그인</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="member_login">
					<form id="loginForm">
						<div class="member_login_input">
							<input type="text" name="id" id="id" placeholder="아이디" >
							<div id="idDiv"></div>
						</div>
						<div class="member_login_input">
							<input type="password" name="pwd" id="pwd" placeholder="비밀번호" autocomplete="on">
							<div id="pwdDiv"></div>
						</div>
						<div class="member_login_btn">
							<input type="button" class="btn btn-secondary" id="btn-login" value="로그인">
							<input type="button" class="btn btn-secondary" value="회원가입" onclick="location.href='/team_project/user/writeForm'">
						</div>
						<div class="find_password">
							<a href="/forgot-password">아이디 또는 비밀번호를 잊으셨나요?</a>
						</div>
						<div class="login_api">
							<a href="https://kauth.kakao.com/oauth/authorize?client_id=d860d38c992ca8bf5f07dcc3fd5122b9&redirect_uri=http://localhost:9090/member/auth/kakao/callback&response_type=code"><img src="/team_project/resources/img/kakao_login_medium_narrow.png" style="width: 200px; height: 45px;"></a>
						</div>
						<div class="login_api">
							<a href="/oauth2/authorization/google"><img src="/team_project/resources/img/naverlogin.png" style="width: 200px; height: 45px; margin-top: 8px;"></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>




<div class="sidebar-wrap">
	<aside id="sidebar" class="sidebar">
		<nav>
			<dl>
				<dt class="on">
					<a href="#">
						<p class="label-txt"> <i class="bi bi-house"></i> 홈 </p>
					</a>
				</dt>
			</dl>
			<dl>
				<dt class="on">
					<a href="/team_project/product/productList"><p class="label-txt"> <i class="bi bi-list-stars"></i> 전체 매물 </p></a>
				</dt>
			</dl>
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-pc-display-horizontal"></i> 디지털/가전 </p>
				</dt>
				<dd>
					<a href="#" class="">
						<p class="label-txt">생활가전</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">주방가전</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">계절가전</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">컴퓨터/노트북</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">모바일/디카</p>
					</a>
				</dd>
			</dl> 
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-globe2"></i> 아웃도어/스포츠 </p>
				</dt>
				<dd>
					<a href="#" class="">
						<p class="label-txt">골프</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">캠핑/낚시/등산</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">헬스/수영/러닝</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">스키/보드/구기</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">자전거</p>
					</a>
				</dd>
			</dl>
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-flower2"></i> 홈/생활 </p>
				</dt>
				<dd>
					<a href="#" class="">
						<p class="label-txt">가구/조명</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">식품</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">생활/주방</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">반려동물 용품</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">도서/그림/악기</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">티켓/음반/공연</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">게임/취미</p>
					</a>
					<a href="#" class="">
						<p class="label-txt">식물</p>
					</a>
				</dd>
			</dl>
		</nav>
	</aside>
</div>


<div class="quick-menu" id="quick-menu">
	<ul>
		<li>
		
			<a href="#"> 
			
				<span class="icon badge-container">
					<i class="bi bi-info-circle"></i>
				</span> 
				<span class="label">경매방법</span>
			</a>
			<hr width="80%">
		</li>
		<li>
			<a href="/team_project/product/productWriteForm"> 
				<span class="icon badge-container">
					<i class="bi bi-clipboard2"></i>
				</span> 
				<span class="label">글쓰기</span>
			</a>
			<hr width="80%">
		</li>
		<li>
			<a href="#" id="messageBtn"> 
				<span class="icon badge-container">
					<i class="bi bi-envelope"></i>
					<span class="badge">99</span>
				</span> 
				<span class="label">메세지함</span>
			</a>
			<hr width="80%">
		</li>
		<li>
			<a href="#"> 
				<span class="icon badge-container">
					<i class="bi bi-person"></i>
				</span> 
				<span class="label">마이페이지</span>
			</a>
			<hr width="80%">
		</li>
		<li>
			<a href="#"> 
				<span class="icon badge-container">
					<i class="bi bi-question-circle"></i>
				</span> 
				<span class="label">Q&A</span>
			</a>
		</li>
	</ul>
</div>



						
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	 
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#quick-menu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
 
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
 
		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */
 
		$("#quick-menu").stop().animate({
			"top" : newPosition
		}, 200);
 
	}).scroll();
 
});
</script>
<script language="JavaScript">
function printTime() {
var clock = document.getElementById("clock");
var now = new Date();

clock.innerHTML = now.getFullYear() + ". " +
(now.getMonth()+1) + ". " +
now.getDate() + " " +
now.getHours() + ":" +
now.getMinutes() + ":" +
now.getSeconds();

setTimeout("printTime()", 1000);
}

window.onload = function() {
printTime();
};
</script>
<script type="text/javascript">
$(function () {
	
	$('.close').hide();
	$('#sidebar').hide();
	$('.sidebar nav dd').hide();
	$('#nameTag').hide();
	$('#quick-menu').hide();
	
	
	
	$('#categoryBtn').click(function () {
		$('.close').toggle();
		$('.list').toggle();
		$('#sidebar').toggle();
	});
	
	$('#sidebar nav dt').click(function () {
		$(this).next('dd').toggle();
	});
	
	var id = "${sessionScope.id}";
	if ( id == '') {
		$('#headerRight_login').show();
		$('#headerRight_logout').hide();
		$('#nameTag').hide();
		$('#quick-menu').hide();
	} else {
		$('#headerRight_login').hide();
		$('#headerRight_logout').show();
		$('#nameTag').show();
		$('#quick-menu').show();
	}
	
	
	
	$.ajax({
		url : '/team_project/product/getProductList',
		type: 'post',
		dataType : 'json',
		success : function(data){
			console.log(data)
			
			
			//최신 top5
			
			var data1 = data.filter(item => item.product_seq <= data.length+2)
			data1.sort(function(a, b) { // 오름차순
			return a.product_seq < b.product_seq ? -1 : a.product_seq > b.product_seq ? 1 : 0;
			});
			console.log(data1)
			console.log(data1[0].subject)
			
			$.each($('.thumb .new'),function(index, items){
				$(items).attr('src','/team_project/resources/img/'+data1[index].img1)
			
			});
			$.each($('.posted-info .subject .new'),function(index, items){
				$(items).text(data1[index].subject)
			
			});
			//홈/생활 top5 
			
			
			
			
			
			
			 /* $.each(data,function(index, items){
				var end = new Date(items.endDate);
				var time=end.getMonth()+1+'/'+end.getDate()+'/'+end.getFullYear()+' '+end.getHours()+':'+end.getMinutes();
				console.log(time);
 			
				$('<div/>',{class:'col-4'}).append($('<div/>',{class: 'card',style:'width: 18rem; margin-top : 20px; border-color: #EDEDED'})
											.append($('<img>',{src:'/team_project/resources/img/'+items.img1, class:'card-img-top', width : '100%', height : '250', alt : '대표이미지'}))
											.append($('<div/>',{class:'card-body'})
											.append($('<h5/>',{class:'card-title',text:items.subject}))
											.append($('<p/>',{class:'card-text',text:items.content})
											.append($('<br>'))
											.append($('<span>',{text:'시작가 : '+comma(items.startprice)+'원', id : 'startprice'}))
											.append($('<br>'))
											.append($('<span>',{text: '현재가 : '+comma(items.nowprice)+'원'}))
											.append($('<br>'))
											.append($('<span>',{text: '호가 : '+comma(items.unitprice)+'원'}))
											.append($('<div/>',{class:'timer',id:items.product_seq})))
											.append($('<a/>',{href:'/team_project/product/productView?product_seq='+items.product_seq,class:'btn btn-primary',text:'응찰하러가기'})))).appendTo($('#row'));
				CountDownTimer(time, items.product_seq) 
			 }); */
			
		},
		error : function(err){
			console.log(err);
		}
	});
	
	
});

</script>
<script type="text/javascript">

$('#btn-login').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력하세요.');
		$('#id').focus;
	}else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력하세요.');
		$('#pwd').focus;
	}else {
		$.ajax({
			url : '/team_project/user/login',
			type : 'post',
			data : $('#loginForm').serialize(), 
			dataType:'text',
			success: function(data){
				if(data == 'fail'){
					$('#pwdDiv').text('아이디 또는 비밀번호가 맞지 않습니다.');
					$('#pwdDiv').css('font-size','12pt');
				} else {
					location.href = '/team_project/test/sideBanner';
				}
			},
			error : function(err){
				console.log(err);
			}
		});
	}
});

$('#logoutBtn').click(function () {
	$.ajax({
		url : '/team_project/user/logout',
		type : 'post',
		success: function(){
			location.href = '/team_project/test/sideBanner';
		},
		error : function(err){
			console.log(err);
		}
	});
});

$('#leftScroll').click(function () {
	var scroll = $('.rolling-listed-item').scrollLeft();
	$('.rolling-listed-item').scrollLeft(scroll + 1000);
});

$('#rightScroll').click(function () {
	var scroll = $('.rolling-listed-item').scrollLeft();
	$('.rolling-listed-item').scrollLeft(scroll - 1000);
});


$('#messageBtn').click(function () {
	window.open('/team_project/message/messageList','message','width = 500, height = 500, top = 100, left = 200');
});

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
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
<link rel="stylesheet" href="/team_project/resources/css/message.css">

<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
.rolling-listed-item{
   scroll-behavior : smooth;
}
.modal-body{
   margin: auto;
}
.member_login_input{
   margin-top: 8px;
}
.member_login_btn{
   margin-top: 8px;
   margin-left: 8%;
}
#msgStack{
   position: fixed;
    bottom: 20px;
    right: 10px;
    z-index: 10000;
}
.toast-header .close{
   position: absolute;
   right: 10px;
}
.flex-listed li .thumb img:hover{
	transform : scale(1.1);
}
.card {
    margin-left: 25px;
}
</style>
</head>
<body>

<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>

<div id="container">

	   <input type="hidden" value="${id}" id="msgid">
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
	            <a href="/team_project/product/productList" class="all-target"> 전체보기
	               <i class="fal fa-angle-right"></i>
	            </a>
	         </div>
	         <div class="default-listed-item">
	            <ul>
	               <div class="flex-listed">
	                  <li>
	                     <a href="#" class="thumb" style="border: 1px solid;">
	                        <img src="/team_project/resources/img/loading.gif" class="new" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="new"> </a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb" style="border: 1px solid;">
	                        <img src="/team_project/resources/img/loading.gif" class="new" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="new"> </a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb" style="border: 1px solid;">
	                        <img src="/team_project/resources/img/loading.gif" class="new" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="new"> </a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb" style="border: 1px solid;">
	                        <img src="/team_project/resources/img/loading.gif" class="new" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="new"> </a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb" style="border: 1px solid;">
	                        <img src="/team_project/resources/img/loading.gif" class="new" alt="대표이미지" style="display: block;">
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
	                        <img src="/team_project/resources/img/loading.gif" class="digital" alt="대표이미지" style="display: block; border: 1px solid;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="digital"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="digital" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="digital"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="digital" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="digital"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="digital" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="digital"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="digital" alt="재벌집 막내아들" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="digital"></a>
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
	                        <img src="/team_project/resources/img/loading.gif" class="sports" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="sports"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="sports" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="sports"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="sports" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="sports"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="sports" alt="대표이미지" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="sports"></a>
	                        </p>
	                     </div>
	                  </li>
	                  <li>
	                     <a href="#" class="thumb">
	                        <img src="/team_project/resources/img/loading.gif" class="sports" alt="재벌집 막내아들" style="display: block;">
	                     </a>
	                     <div class="posted-info">
	                        <p class="subject">
	                           <a href="#" class="sports"></a>
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




                  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script>
<script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript">

	//네이버 로그인
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "nzm9yPJHOlGpTiV0eFbd", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/team_project/user/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);
	naverLogin.init();
	
	var socket  = null;
$(document).ready(function(){
	
	   // 웹소켓 연결
	    sock = new SockJS("<c:url value='/echo-ws'/>");
	    socket = sock;

	    // 데이터를 전달 받았을때 
	    sock.onmessage = onMessage; // toast 생성
	   console.log(sock);
	    
	    
	 // toast생성 및 추가
	    function onMessage(evt){
	        var data = evt.data;
	        // toast
	        let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
	        toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
	        toast += "<button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
	        toast += "<span aria-hidden='true'>&times;</span></button>";
	        toast += "</div> <div class='toast-body' >" + data + "</div></div>";
	        $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
	        $(".toast").toast({"animation": true, "autohide": false});
	        $('.toast').toast('show');
	    };   
	    
	       $(document).on('click','.toast-header .close',function (){
	          $(this).parents('.toast').remove();
	       });
	    
	  //notifySend
	    $('#notifySendBtn').click(function(e){
	        
	        
	        
	        let type = '70';
	        let target = $('#msgId').val();
	        let content = "응찰하신 '"+$('#msgContent').val()+"' 상품이 낙찰되었습니다.";
	        let msgseq = $('#msgSeq').val();
	        let url = '/team_project/message/messageList';
	        
	        
	        // 전송한 정보를 db에 저장   
	        $.ajax({
	            type: 'post',
	            url: '/team_project/test/saveNotify',
	            data: {
	                target: target,
	                content: content,
	                type: type,
	                url: url,
	                msgseq : msgseq
	            },
	            success: function(){    // db전송 성공시 실시간 알림 전송
	               
	                // 소켓에 전달되는 메시지
	                // 위에 기술한 EchoHandler에서 ,(comma)를 이용하여 분리시킨다.
	                socket.send("관리자,"+target+","+content+","+url + ","+msgseq);
	            
	            }
	        });
	        $('#msgContent').val('');   // textarea 초기화
	    });
})
</script>


</body>
</html>
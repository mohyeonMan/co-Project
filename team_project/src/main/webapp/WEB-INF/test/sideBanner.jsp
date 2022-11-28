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
					<h1>지금 나에게 필요한 인기 영상</h1>
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
									<img src="https://images.nstatic.org/info/tv/208336/2uI87oGnS6sUORMVVZltZYAlrZh.jpg" class="lazy" alt="3인칭 복수" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">3인칭 복수 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">202</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
							<li>
								<a href="#" class="thumb">
									<img src="https://images.nstatic.org/info/tv/194736/ilTsEVFY9m2yDgsMbpmAzkj9BU5.jpg" class="lazy" alt="커튼콜: 나무는 서서 죽는다" style="display: block;">
								</a>
								<div class="posted-info">
									<p class="subject">
										<a href="#">커튼콜: 나무는 서서 죽는다 </a>
									</p>
									<p class="tag">드라마</p>
									<div class="like">
										<i class="fal fa-heart"></i>
										<span class="like-count">103</span>
									</div>
								</div>
							</li>
						</div>
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








<div style="height: 5000px"></div>







<div class="quick-menu" id="quick-menu">
	<ul>
		<li><a href="#">글쓰기</a></li>
		<li><a href="../user/myPage">마이페이지</a></li>
		<li><a href="#">Q&A</a></li>
		<li><a href="#">공지사항</a></li>
		<li><a href="#">경매방법</a></li>
		<li><a href="../product/successedPrd">낙찰된 물품 보기</a></li>
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
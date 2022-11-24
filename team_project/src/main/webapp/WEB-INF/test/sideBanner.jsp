<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">

<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
#topMenu{
	margin-top: 80px;
}

.menu-accordion {
    display: inline-block;
    width: auto;
    height: auto;
    background-color: #0C1B21;
}
ul, ol, dl {
    width: 100%;
    height: auto;
    /* overflow: hidden; */
    list-style: none;
    margin: 0;
    padding: 0;
    cursor: default;
    position: relative;
}
ul:after, ol:after, dl:after {
    content: '';
    display: table;
    clear: both;
}
.menu-accordion li {
    display: block;
    float: none;
}
ul > li, ol > li {
    width: 100%;
    height: auto;
    overflow: visible;
    position: relative;
    float: left;
}
.menu-accordion li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.menu-accordion.menu-accordion-sm li a {
    padding-top: 13px;
    padding-bottom: 13px;
    font-size: 13px;
}
.menu-accordion > li > a {
    font-size: 16px;
    padding: 21px 40px 20px 16px;
}
.menu-accordion li a {
    position: relative;
    display: block;
    font-size: 13px;
    line-height: 15px;
    color: #B6BDC1;
    letter-spacing: calc((-25 / 1000) * 1em);
    text-decoration: none;
    padding: 13px 16px 12px;
    width: 230px;
    height: auto;
    background-color: #0C1B21;
}
</style>
</head>
<body>

<div id="header">
	<div id="headerLeft">
		<a id="categoryBtn">
			<span class="list"><i class="bi bi-list"></i></span>
			<span class="close">
				<i class="bi bi-x-lg"></i>
			</span>
		</a>
		<img src="/team_project/resources/img/logo1.jpeg" alt="로고" id="logo">
		<h1 id="nick">jk1405님 </h1>
		<span id="clock"></span>
	</div>
	<div id="headerRight_login">
		<a>로그인</a> / <a>회원가입</a> / <a>공지사항</a>
	</div>
	
</div>



<div style="height:5000px" id="topMenu">


<ul class="menu-accordion menu-accordion-sm" id="c_size_menu">
	<li class=""><a href="#"><span class="label">첫번째메뉴텍스트</span></a></li>
	<li class="disabled"><a href="#"><span class="label">첫번째메뉴텍스트</span></a></li>
	<li class="tree-view open"><a href="#"><span class="label">첫번째메뉴텍스트</span></a>
		<ul class="tree-view-menu">
			<li><a href="#"><span class="label">두번째메뉴텍스트</span></a></li>
			<li class="disabled"><a href="#"><span class="label">두번째메뉴텍스트</span></a></li>
			<li class="tree-view open"><a href="#"><span class="label">두번째메뉴텍스트</span></a>
				<ul class="tree-view-menu">
					<li><a href="#">세번째메뉴텍스트</a></li>
					<li class="disabled"><a href="#">세번째메뉴텍스트</a></li>
					<li class="tree-view open"><a href="#">세번째메뉴텍스트</a>
						<ul class="tree-view-menu">
							<li class="active"><a href="#">네번째메뉴텍스트</a></li>
							<li><a href="#">네번째메뉴텍스트</a></li>
							<li class="disabled"><a href="#">네번째메뉴텍스트</a></li>
						</ul></li>
				</ul></li>
		</ul></li>
	<li class="tree-view"><a href="#"><span class="label">첫번째메뉴텍스트</span></a>
		<ul class="tree-view-menu">
			<li><a href="#"><span class="label">두번째메뉴텍스트</span></a></li>
			<li><a href="#"><span class="label">두번째메뉴텍스트</span></a></li>
			<li class="tree-view"><a href="#"><span class="label">두번째메뉴텍스트</span></a>
				<ul class="tree-view-menu">
					<li><a href="#">세번째메뉴텍스트</a></li>
					<li class="tree-view"><a href="#">세번째메뉴텍스트</a>
						<ul class="tree-view-menu">
							<li><a href="#">네번째메뉴텍스트</a></li>
							<li class="active"><a href="#">네번째메뉴텍스트</a></li>
							<li><a href="#">네번째메뉴텍스트</a></li>
						</ul></li>
				</ul></li>
		</ul></li>
</ul>


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
			<a href="#"> 
				<span class="icon badge-container">
					<i class="bi bi-clipboard2"></i>
				</span> 
				<span class="label">글쓰기</span>
			</a>
			<hr width="80%">
		</li>
		<li>
			<a href="#"> 
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
					<i class="bi bi-person"></i>
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
	$('#categoryBtn').click(function () {
		$('.close').toggle();
		$('.list').toggle();
	});
});

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<style type="text/css">
div{
	border:1px dotted gray;
}
#floatMenu {
	position: absolute;
	width: 200px;
	height: 200px;
	right: 0px;
	top: 150px;
	background-color: #404040;
	color: #fff;
}
</style>
</head>
<body>
	<div id="floatMenu">
		<ul>
			<li><a href="/team_project/product/productWriteForm">글쓰기</a></li>
			<li><a href="/team_project/user/myPage?id=">마이페이지</a></li>
			<li><a href="#">Q&A</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">경매방법</a></li>
			<li><a href="/team_project/product/successedPrd">낙찰물품 확인하기</a></li>
		</ul>
	</div>
	
	<div id="wrap">
		<div id="header">
			<div id="fix_header">
				<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>
			</div>
			<div id="face_header"></div>
		</div>

		<div id="container">
			<div id="section_1">
				<div class="section_1" id="section_1-1">
					<jsp:include page="/WEB-INF/main/grid.jsp"></jsp:include>
				</div>
				<div class="section_1" id="section_1-2" style="display: hidden;">
					<jsp:include page="/WEB-INF/user/loginForm.jsp"></jsp:include>
				</div>
			</div>
			<div id="section_2">section_2</div>
		</div>

		<div id="footer">footer</div>

	</div>

	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
 
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
 
		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */
 
		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 200);
 
	}).scroll();
});
</script>
</body>
</html>
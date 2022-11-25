<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#floatMenu {
	position: absolute;
	width: 200px;
	height: 200px;
	right: 0px;
	top: 150px;
	background-color: #404040;
	color: #fff;
}
ul{
	list-style: none;
}
</style>
</head>
<body>
<div style="height:5000px">

</div>



<div id="floatMenu">
	<ul>
		<li><a href="#">글쓰기</a></li>
		<li><a href="#">마이페이지</a></li>
		<li><a href="#">Q&A</a></li>
		<li><a href="#">공지사항</a></li>
		<li><a href="#">경매방법</a></li>
		<li><a href="#">낙찰된 물품 보기</a></li>
	</ul>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
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
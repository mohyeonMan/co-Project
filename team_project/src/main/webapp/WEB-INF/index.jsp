<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
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
			<li><a href="/team_project/product/productWriteForm">湲��곌린</a></li>
			<li><a href="#">留��댄���댁�</a></li>
			<li><a href="#">Q&A</a></li>
			<li><a href="#">怨듭��ы��</a></li>
			<li><a href="#">寃쎈ℓ諛⑸�</a></li>
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
	// 湲곗〈 css���� ��濡��� 諛곕�� ��移�(top)媛��� 媛��몄�� ���ν����.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px �대�곗���쇰� 媛��몄�ㅻ��濡� �ш린�� �レ��留� 媛��몄�⑤��. parseInt( 媛� );
 
	$(window).scroll(function() {
		// ���� �ㅽ�щ· ��移�瑜� 媛��몄�⑤��.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
 
		/* ����硫��댁�� ���� 諛�濡� �곕�쇨�
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
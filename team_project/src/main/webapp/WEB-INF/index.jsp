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
</style>
</head>
<body>

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
				<div class="section_1" id="section_1-2"style="display:hidden;">
					<jsp:include page="/WEB-INF/user/loginForm.jsp"></jsp:include>
				</div>
			</div>
			<div id="section_2">section_2</div>
		</div>

		<div id="footer" >footer</div>

	</div>


</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if(!sessionStorage.getItem('userid')){
		$('#section_1-2').show();
	}
	
})
</script>
</html>
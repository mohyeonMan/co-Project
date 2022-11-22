<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"><title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">
<style type="text/css">
div{
	margin:5px;
	border:1px dotted gray;
}
</style>
</head>
<body>
<div id="wrap" style="display:block; width:80%; margin: auto;">
	<div id="fix_header">
		<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>
	</div>
	<div id="header"><span style=" color: white; font-size: 20px;">header</span>
	</div>
	<div id="container">container
		<div id="section_1">
			<div id="section_1-1" style="display:inline-block; width:75%;">
				<jsp:include page="/WEB-INF/main/grid.jsp"></jsp:include>
			</div>
			<div id="section_1-2" style="display:inline-block; width:20%;">
				<jsp:include page="/WEB-INF/user/loginForm.jsp"></jsp:include>
			</div>
		</div>
		<div id="section_2">section_2
		</div>
	</div>
	<div id="footer">footer
	</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html> 
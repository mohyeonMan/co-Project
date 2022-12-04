<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	alert("매물이 정상적으로 등록되었습니다.");
	opener.location.href='/team_project/product/productList?category_1=#&category_2=#';
	window.close();
});
</script>
</body>
</html>
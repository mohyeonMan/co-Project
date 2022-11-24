<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<input type="text" value="${param.id}" name="id" id="id">
<body>
	<select id="opt">
	<option selected="selected">정렬선택</option>
	<option value="highprice">입찰 가격순</option>
	<option value="newestbidtime">최신 입찰순</option>
	<option value="newestproduct">최신 상품순</option>
	</select>	
	<table id="boardtable" border="1" cellpadding="5"  frame="hsides" rules="rows" bordercolor="black">
	
		<tr>
			<th width="100">물건번호</th>
			<th width="400">물건이름</th>
			<th width="100">입찰가격</th>
			<th width="100">입찰시간</th>
		</tr>
		
		<!-- 동적처리 자리 -->
	</table>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../resources/js/myBidList.js"></script>
</body>
</html>
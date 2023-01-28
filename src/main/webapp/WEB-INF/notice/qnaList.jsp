<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>


<jsp:include page="../main/header.jsp"></jsp:include>


<h3>faq</h3>
<div class="container">
<form>
	<table class="table table-hover">
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>		
			<th>작성일자</th>
							
		</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="list">
				<tr>
					<td>${list.qna_seq }</td>
					<td><a href="/team_project/notice/qnaDetail?qna_seq=${list.qna_seq }">${list.qna_title }</a></td>
					<td>${list.qna_date }</td>				
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
</form>
	<div id="qnaUpdateDiv">
		<c:if test="${sessionScope.id == 'admin' }">
			<button type="button" class="btn btn-outline-danger" onclick="location.href='/team_project/notice/qnaForm'">
			새글쓰기</button>
		</c:if>		
	</div>
</div>
</body>
</html>
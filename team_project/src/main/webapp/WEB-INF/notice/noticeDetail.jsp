<%@page import="com.bit.team_project.DTO.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<link rel="stylesheet" href="/team_project/resources/css/container.css">
<link rel="stylesheet" href="/team_project/resources/css/modal.css">
<link rel="stylesheet" href="/team_project/resources/css/message.css">
<link rel="stylesheet" href="/team_project/resources/css/footer.css">
<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
#noticeDetailForm{
	margin-top: 80px;
}
</style>
</head>

<body>

<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>


<form id="noticeDetailForm" >

	<table  id="noticeDetailTable" class ="table" >
		<thead>
			<tr>
				<th>글번호</th>
				<th>조회수</th>
				<th>작성자</th>				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${noticeDTO.no_seq }</td>
				<td>${noticeDTO.no_hit }</td>
				<td>${noticeDTO.no_writer }</td>
				
			</tr>
		</tbody>
		<thead>
			<tr>
				<th>제목</th>
				<th>내용</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${noticeDTO.no_title }</td>
				<td>
					<div style="width:100%; height: 100%; overflow: auto;">
						<pre style="white-space : pre-line; word-break: break-all;">
							${noticeDTO.no_content }
							<span id="contentSpan"></span>
						</pre>
					</div>
				</td>
			</tr>
		</tbody>
			
	</table>
	
	<div style="margin-top: 5px;">
	
		<button type="button" class="btn btn-outline-danger" id="listBtn" onclick="location.href= '/team_project/notice/getNoticePage?num='+${param.num}">목록</button>
	<span id = "noticeDetailSpan">
		
		<button type="button" class="btn btn-outline-danger" id="noticeUpdateBtn">수정</button>
		<button type="button" class="btn btn-outline-danger" id="noticeDeleteBtn">삭제</button>
		
	</span>
	</div>	
	
</form>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script>
<script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
<script type="text/javascript" src="/team_project/resources/js/jquery.tmpl.min.js"></script>
<script type="text/javascript">
$(function(){	
	//수정
	$('#noticeUpdateBtn').click(function(){
		location.href= 'noticeUpdate?no_seq='+ ${noticeDTO.no_seq}
	});
	//삭제
	$('#noticeDeleteBtn').click(function(){
		location.href='noticeDelete?no_seq=' + ${noticeDTO.no_seq}
	});	
});
</script>

</body>
</html>
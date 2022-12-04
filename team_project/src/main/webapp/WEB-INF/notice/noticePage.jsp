<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

</style>
</head>
<body>

<input type="hidden" value="${param. num }" id="aa">

<h3>공지사항</h3>
<div class="container">
<table border="1"  id="noticeTable" class="table table-hover">
		<thead>	
			<tr>
				<th width = "100px" align="center">글번호</th>
				<th width = "350px" align="center">제목</th>
				<th width = "100px" align="center">작성자</th>
				<th width = "80px" align="center">조회수</th>
				<th width = "120px" align="center">작성일</th>
			</tr>
		</thead>
		<tbody id="tbody">
			
		</tbody>
			<!-- 동적처리 -->
		
</table>			
</div>		
	<div style="text-align:center;">
			<div class="btn-group" role="group" aria-label="Basic example">
				<c:if test="${num >= 2}">
					<button onclick="location.href='/team_project/notice/getNoticePage?num=' + ${num-1}" type="button" class="btn btn-outline-primary" >
					이전
					</button>
				</c:if>						      
				
				<c:if test="${num != ''}">
					<button onclick="location.href='/team_project/notice/getNoticePage?num=' + ${num +1 }" type="button" class="btn btn-outline-primary">
					다음
					</button>
				</c:if>
				
				
            </div>
	</div>
	
	
		<div id="noticeUpdateDiv">
		<c:if test="${sessionScope.id == 'admin' }">
			<button type="button" class="btn btn-outline-danger" onclick="location.href='/team_project/notice/noticeForm'">
			공지쓰기</button>
		</c:if>		
		</div>	
		

	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>			
<script type="text/javascript">
	//리스트 값  가져오기
 	$.ajax({
		type: 'get',
		url: '/team_project/notice/noticePage',
		data:'num='+$('#aa').val(),
		success: function(data){
			//console.log(JSON.stringify(data));
			$.each(data, function(index,items){
				
			$('<tr/>').append($('<td/>',{
						align: 'center',
						text: items.no_seq
					})).append($('<td/>',{
	 					align: 'left'	 					
	 				}).append("<p><a href='/team_project/notice/noticeDetail?no_seq=" + items.no_seq + "&num="+${param.num}+"'>" + items.no_title+ "</a></p>")
	 				).append($('<td/>',{
	 					align: 'center',
	 					text: items.no_writer
	 				})).append($('<td/>',{
	 					align: 'center',
	 					text: items.no_hit
	 				})).append($('<td/>',{
	 					align: 'center',
	 					text: items.no_date
	 				})).appendTo($('#noticeTable #tbody'));
				});		//each	
			
		},
		error: function(err){
			console.log(err);
		}
	}); 
	
	


</script>			
		
</body>
</html>
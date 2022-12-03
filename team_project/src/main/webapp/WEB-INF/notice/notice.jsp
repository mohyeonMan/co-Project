<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<link rel="stylesheet" href="/team_project/resources/css/container.css">
<link rel="stylesheet" href="/team_project/resources/css/modal.css">
<link rel="stylesheet" href="/team_project/resources/css/message.css">
<link rel="stylesheet" href="/team_project/resources/css/footer.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<style type="text/css">
p{
	color: black;
}
</style>
</head>
<body>


<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>


<h3>공지사항</h3>
<div class="container">
<table border="1"  id="noticeTable" class="table table-hover" style="margin-top:80px;">
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
				<button type="button" class="btn btn-outline-primary">이전</button>
				<button type="button" class="btn btn-outline-primary active">1</button>
				<button type="button" class="btn btn-outline-primary active">2</button>
				<button type="button" class="btn btn-outline-primary">다음</button>
            </div>
	</div>
	
	<button type="button" class="btn btn-outline-danger" onclick="location.href='/team_project/notice/noticeForm'">공지쓰기</button>	
	<jsp:include page="/WEB-INF/main/footer.jsp"></jsp:include>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script>
<script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
<script type="text/javascript">
$(function(){
	//리스트 값  가져오기
	$.ajax({
		type: 'post',
		url: '/team_project/notice/getNoticeList',
		dataType: 'json',
		success: function(data){
			$.each(data, function(index,items){
				
			$('<tr/>').append($('<td/>',{
						align: 'center',
						text: items.no_seq
					})).append($('<td/>',{
	 					align: 'left'	 					
	 				}).append("<p><a href='/team_project/notice/noticeDetail?no_seq=" + items.no_seq + "'><font color='black'>" + items.no_title+ "</a></p>")
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
});


</script>			
		
</body>
</html>
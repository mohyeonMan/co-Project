<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
table {
	margin: auto;
	width: 800px;
}
form {
	margin:auto;
}
#titleDiv, #contentDiv{
	color: red;	
}
@font-face { 
font-family: ‘yangjin’; 
src: url(‘https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff’) format(‘woff’); 
font-weight: normal; 
font-style: normal; 
}

</style>
</head>
<body>

<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>


<!-- admin인지 확인 -->
<div class="container">
<form id="noticeUpdateForm">
	<input type="hidden" id="no_seq" name="no_seq" value=${noticeDTO.no_seq }>
	<table>
		<tr>
			<td>
				<div class="mb-3">
	 				<label for="no_title" class="form-label">제목</label>
	  				<input type="text" class="form-control" id="no_title" name="no_title" placeholder="제목"value =${noticeDTO.no_title }>
	  				<div id="titleDiv"></div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="mb-3">
	 				<label for="no_writer" class="form-label">작성자</label>
	  				<input type="text" class="form-control" id="no_writer"  name="no_writer" value =${noticeDTO.no_writer } disabled>
	  				
	  				
	  				
				</div>
			</td>		
		</tr>
		<tr>
			<td>
				<div class="mb-3">
				  <label for="no_content" class="form-label">내용</label>
				  <textarea class="form-control" id="no_content" name="no_content" rows="3" placeholder="내용을 입력하세요">
				  ${noticeDTO.no_content }
				  </textarea>
				  <div id="contentDiv"></div>
				</div>
			<td>
		</tr>
		
	</table>			
	
<button type="button" class="btn btn-outline-danger" id="UpdateBtn">수정</button>

</form>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>	
<script type="text/javascript">
$(function(){
	//버튼 누를때
	$('#UpdateBtn').click(function(){
		$('#titleDiv').empty();
		$('#contentDiv').empty();
		
		if($('#no_title').val() ==''){
        	$('#titleDiv').text('제목을 입력해주세요');
        	$('#no_title').focus();
        	
        }
        else if($('#no_content').val() ==''){
        	$('#contentDiv').text('내용을 입력해주세요');
        	$('#no_content').focus();
        	
        }else{
      		$.ajax({
      			type: 'get',
      			url: '/team_project/notice/noticeUpdateBtn',
      			data: $('#noticeUpdateForm').serialize(),
      			success: function(){      				
      				alert("공지수정 완료");
      				location.href='/team_project/notice/noticeDetail?no_seq='+${noticeDTO.no_seq} ;
      			},
      			error: function(err){
      				console.log(err);
      			}
      		});
      	}
	});
});
</script>
		
		
</body>
</html>
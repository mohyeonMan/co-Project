<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
#qnaForm {
	margin: auto;
	padding: 30px;
}
</style>
</head>
<body>



<h3>FAQ</h3>

<form id="qnaForm" action="/team_project/notice/qnaWrite">
	<table class="table ">
		<thead>
			<div class="form-floating mb-3">
  				<label for="floatingInput">제목</label>
  				<input type="text" class="form-control" id="qna_title" name="qna_title" placeholder="제목">
			</div>	
		</thead>
		<tbody>
			<div class="form-floating">
  				<label for="floatingTextarea2">내용</label>
  				<textarea class="form-control" placeholder="Leave a comment here" id="qna_content" name="qna_content" style="height: 100px"></textarea>
			</div>
		</tbody>
	</table>
	<button type="submit" class="btn btn-outline-danger" >작성</button>
</form>



</body>
</html>

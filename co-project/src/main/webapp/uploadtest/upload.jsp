<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form id="uploadForm">
		<input type="file" name="file" id="file" multiple><br>
		<input type="text" name="nada" id="nada">
		<input type="button" value="Upload"  id="uploadBtn">
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript">
$('#uploadBtn').click(function(){
	
		
		$('#uploadForm').ajaxSubmit({
			url : '/co-project/uploadtest/upload.do',
			type : 'post',
			processData: false,
			contentType: false, 
			data : $('#uploadForm').serialize(),// 주소창과 같이 데이터 담기
			success: function(){
					alert("성공");
					
				},
				error : function(err){
					console.log(err);
				}
		});
		
		
	
});
</script>

</body>
</html>
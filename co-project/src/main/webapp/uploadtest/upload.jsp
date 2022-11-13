<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fieldset>
     <legend>파일 업로드</legend>
     <form id="uploadForm">
     <table>
          <tr>
              <td>글쓴이 : </td>
              <td><input type="text" name="author"/><div id="authorDiv"></div></td>
          </tr>
          <tr>
              <td>제목 : </td>
              <td><input type="text" name="title"/><div id="titleDiv"></div></td>
          </tr>
          <tr>
              <td>글쓴이 : </td>
              <td><input type="file" value="파일 선택" name="file"/><div id="fileDiv"></div></td>
          </tr>
          <tr>
              <td colspan="2"><input type="button" value="업로드" id="uploadBtn"/></td>
          </tr>
     </table>
          </form>
</fieldset>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$('#uploadBtn').click(function(){
	
		
		$.ajax({
			url : '/co-project/uploadtest/upload.do',
			type : 'post',
			enctype : "multipart/form-data",
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">

<style type="text/css">
#checkForm{

width :70%;
margin: auto;

}


</style>
</head>
<body>

<div class="popupHeader">
		<span
			style="color: white; margin-left: 10px; margin-top: 10px; font-size: 10pt;">회원탈퇴</span>
	</div>
<div id ="checkForm">

	<h4>회원정보를 재확인합니다.</h4><br>
	<div class="col-sm-4">
		<div class="input-form-box"> 아이디  <input type="text" class ="form-control" value = "${id }" width="80" id="checkid" name="checkid" placeholder="아이디 입력" class="form-control"/></div>
	</div>
		<div id = "idDiv"></div>
	<div class="col-sm-4" >
		<div class="input-form-box"> 비밀번호  <input type="password" class ="form-control" width="150" id="checkpwd" name="checkpwd" placeholder="비밀번호 입력" class="form-control"/></div>
	</div>
		<div id = "pwdDiv"></div>
</div>
<br>
<div class="row">
<div class="col text-center">

	<div  align="center" class="btn-group" role="group" aria-label="Basic outlined example">
		<input type="button" class="btn btn-outline-primary"value="탈퇴하기"  id="deleteBtn"/>
		<input type="button"class="btn btn-outline-primary" value="뒤로가기"  id="backBtn"  onclick="location.href='/team_project/user/myPage'"/>

	</div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" >
$('#deleteBtn').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();

	if( $('#checkid').val()==''){
		$('#idDiv').text('아이디를 입력해주세요.');
		$('#idDiv').css('color', 'red');
		$('#idDiv').css('font-weight', 'red');
	}else if( $('#checkpwd').val()==''){
		$('#pwdDiv').text('비밀번호를 입력해주세요.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-weight', 'red');
	}else{
		$.ajax({
		type: 'post',
		url: '/team_project/user/checkUser',
		data: { 'id': $('#checkid').val(), 'pwd': $('#checkpwd').val() },
		success: function(data){
			if(data == ''){				
				alert('아이디 또는 비밀번호가 다릅니다.');
			}else{
				//삭제
				if(confirm('정말 탈퇴 하시겠습니까?')){
					$.ajax({
						type: 'post',
						url: '/team_project/user/deleteUser',
						data: 'id=' + $('#checkid').val(),
						success: function(){
							alert("탈퇴 되었습니다.");
							window.close()
							
						},
						error:function(err){
							console.log(err);
						}
					});
				}//if
			}//else
		},
		error: function(err){
			console.log(err);
		}
	});//$.ajax
	}
});
</script>
</body>
</html>
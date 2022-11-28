<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<Form name="myPage" id="myPage" >
			<table border ="1" width="500" cellpadding="10">
			<tr>
				<td width="100" align="center">이름</td>
				<td>
					<input type="text" name="name" id="name" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td width="100" align="center">아이디</td>
				<td>
					<input type="text" name="id" id="id" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td width="100" align="center">비밀번호</td>
				<td>
					<input type="password" name="pwd" id="pwd"/>
					<div id="pwdDiv"></div>
				</td>
			</tr>
			<tr>
				<td width="100" align="center">재확인</td>
				<td>
					<input type="password" id="repwd"/>
					<div id="repwdDiv"></div>
				</td>
			</tr>
			<tr>
				<td width="100" align="center">핸드폰</td>
				<td>
					<select name="tel1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="019">019</option>
					</select>
					-
					<input type="tel" name="tel2" maxlength="4" style="width:50px;"/>
					-
					<input type="tel" name="tel3" maxlength="4" style="width:50px;"/>
				</td>
			</tr>
			<tr>
				<td align="center">이메일</td>
				<td>
					<input type="text" name="email1"/> @ 
					<input type="text" name="email2" list="email2" placeholder="직접입력"/>
					<datalist id=email2>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.com">daum.com</option>
					</datalist>
				</td>
			</tr>
			<tr>
				<td width="100" align="center">주소</td>
				<td>
					<input type="text" name="zipcode" id="zipcode" readonly style="margin-bottom:5px;"/>
					<input type="button" value="우편번호검색" onclick="checkPost()"/><br>
					<input type="text" id="addr1" name="addr1" readonly placeholder="주소" style="width:330px; margin-bottom:5px;"/><br>
					<input type="text" id="addr2" name="addr2" placeholder="상세주소" style="width:330px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정" id="updateBtn"/>
					<input type="button" value="응찰이력 확인하기" onClick="location.href='/team_project/user/myBidList'"/><!--  -->
				</td>
			</tr>
		</table>
	</Form>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$.ajax({
	type : 'post',
	url : '/team_project/user/getUserDetail',
	data : 'id='+'${id}',
	dataType : 'json',
	success : function (data) {
		$('input[name=name]').val(data.name);
		$('input[name=id]').val(data.id);
		$('input[name=email1]').val(data.email1);
		$('input[name=email2]').val(data.email2);
		$('input[name=tel1]').val(data.tel1);
		$('input[name=tel2]').val(data.tel2);
		$('input[name=tel3]').val(data.tel3);
		$('input[name=zipcode]').val(data.zipcode);
		$('input[name=addr1]').val(data.addr1);
		$('input[name=addr2]').val(data.addr2);
	},
	error : function (err) {
		
	}
})

$('#updateBtn').click(function () {
	alert($('#pwd').val())
	$.ajax({
		
	url:'/team_project/user/update',
	type:'post',
	data : $('#myPage').serialize(),
	success : function () {
		alert("수정 성공")
	},
	error : function (err) {
		alert("실패")
	}
	})
})
</script>
</html>
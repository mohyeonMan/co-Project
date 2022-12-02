<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
* {
    box-sizing: border-box;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    user-select: none;
}
body {
    width: 100%;
    height: 100%;
    min-height: 100%;
    overflow: auto;
    font-size: 14px;
    font-weight: 400;
    color: #2a3138;
    /* background: #f8f8f8; */
    background: #E9E9E9;
    word-break: keep-all;
    position: relative;
    overflow-scrolling: touch;
    font-feature-settings: 'liga';
}
.table {
    width: 100%;
    max-width: 100%;
    border-collapse: collapse;
    background-color: #f8f8f8;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
button, input {
    overflow: visible;
}
button, input, select, textarea {
    font: inherit;
    margin: 0;
    padding: 0;
    border: none;
    outline: none;
    border-radius: 0;
    box-sizing: border-box;
    -webkit-appearance: none;
}
.list tr{
	border-bottom: 1px solid;
	padding: 10px;
}
.list tr td{
	padding: 10px;
}
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#E1EEF5">

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr>
		<td>
			
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr height="30" bgcolor="#5A5A5A">
		<td width="35%" style="color:#FFFC00;padding-left:7px;">
			<input type="hidden" id="id" value="${id}">
			<b>${name}</b>님
		</td>
	</tr>
</tbody></table>
		</td>
	</tr>
	<form name="mul_del" action="" method="post"></form>
	<tr>
		<td valign="top">
			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="stex">
				<tbody><tr height="65">
					<td style="line-height:18px;padding:10px 10px;">
					* 낙찰 받으신 상품을 <font color="red">클릭</font>하면 <font color="blue">[결재창]</font>으로 이동합니다.<br>
					* <font color="red">읽지 않음</font> 상태의 쪽지는 삭제가 <font color="red">불가능</font>합니다.<br>
					* 삭제한 쪽지는 복구가 <font color="red">불가</font>합니다. <font color="red">쪽지 삭제시 유의 부탁드립니다.</font><br>
					</td>
				</tr>
			</tbody></table>

			<table width="550" cellspacing="0" cellpadding="0" align="center" class="stex" style="margin-left: 15px; margin-right: 15px; border-collapse: collapse">
				<tbody class="list">
					<tr align="center" height="25" style="border-bottom: 1px solid">
						<td width="300" style="font-weight: 700; color: black;">
							<b>제목</b>
						</td>
						<td width="70" style="font-weight: 700; color: black;">
							<b>보낸이</b>
						</td>
						<td width="70" style="font-weight: 700; color: black;">
							<b>상태</b>
						</td>
					</tr>

				</tbody>
			</table>

			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="mtex">
				
			</table>

			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" height="34">
				<tbody><tr valign="bottom" align="center">
					<td>
						<input type="button" value="선택쪽지 삭제" onclick="mul_check();" style="font-size:12px;width:100px;height:25px;border:1px solid #000000;">
						<input type="button" value="새쪽지 작성" onclick="location.href='./write.asp?msgchk1=1';" style="font-size:12px;width:100px;height:25px;border:1px solid #000000;">
						
						<input type="button" value="보관함 이동" onclick="save_move();" style="font-size:12px;width:100px;height:25px;border:1px solid #000000;">
						
					</td>
				</tr>
			</tbody></table>

			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
				<tbody><tr height="40">
					<td align="center">
						<table border="0" cellspacing="0" cellpadding="0">
							<tbody><tr>
								<td>
									
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
	

	<tr height="20">
		<td align="center">
			CP쪽지는 [수락]이나 [반송]이 된 경우 삭제가능합니다.
		</td>
	</tr>
	<tr height="10"><td></td></tr>

</tbody></table>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$.ajax({
		url : '/team_project/message/getMessageList',
		data : 'id='+$('#id').val(),
		type : 'post',
		success : function (data) {
			console.log(data)
			$.each(data, function(index, items){
				var status;
				 if(items.hit == 0){status='읽지 않음'}
				 else status='읽음'
				$('<tr>').append($('<td>',{}).append($('<a>',{href:'#',text:items.content}))).append($('<td>',{text:'관리자', align:'center'})).append($('<td>',{text:status, align:'center'})).appendTo($('.list'))
			});
		}, error : function (err) {
			console.log(err)
		}
	});
</script>
</body>
</html>
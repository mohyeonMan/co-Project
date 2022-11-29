<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
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
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#E1EEF5">

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr>
		<td>
			
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr height="30" bgcolor="#5A5A5A">
		<td width="35%" style="color:#FFFC00;padding-left:7px;padding-top: 10px;">
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
					<td style="line-height:18px;padding:10px 0;">
					* 쪽지를 받은 날로부터 <font color="red">10일</font>, 총 쪽지수 <font color="red">150개를 초과</font>하면 쪽지는 자동 삭제 됩니다. ( 복구불가 )<br>
					* CP를 수령하지 않은 쪽지를 삭제할 시, 쪽지와 CP도 함께 삭제되니 유의하시길 바랍니다.<br>
					* CP를 보낸 후, 거래가 완료되었다면<br>
					  &nbsp;&nbsp;<font color="blue">[ CP알리미의 알림쪽지 ]</font>에서 <font color="red">[ 거래완료 ]</font> 버튼을 이용해서 거래를 종료할 수 있습니다.<br>
					  &nbsp;&nbsp;<font color="red">[ 거래완료 ]</font> 버튼을 누르지 않으면, 상대방은 해당 CP를 <font color="blue">36시간 뒤에 사용</font>이 가능합니다.
					</td>
				</tr>
			</tbody></table>

			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="stex" >
				<tbody>
				<tr align="center" height="25">
					<td width="30">
						<input type="checkbox" onclick="this.value=check(this.form.elements,1)">
					</td>
					<td width="300">
						<b>제목</b>
					</td>
					<td width="140">
						<b>보낸이</b>
					</td>
					<td width="50">
						<b>상태</b>
					</td>
				</tr>
				<tr bgcolor="#808080" height="20px" align="center" valign="middle">
					<td height="1">1</td>
					<td height="1">응찰하신 스위치팔아요~ 상품이 낙찰되었습니다.</td>
					<td height="1">관리자</td>
					<td height="1">읽지않음</td>
				</tr>
				<tr bgcolor="#DFE9EC">
					<td height="3">1</td>
					<td height="3">응찰하신 스위치팔아요~ 상품이 낙찰되었습니다.</td>
					<td height="3">관리자</td>
					<td height="3">읽지않음</td>
				</tr>
			</tbody></table>

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

</body>
</html>
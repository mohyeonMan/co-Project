<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#E1EEF5">

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr>
		<td>
			
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tbody><tr height="30" bgcolor="#5A5A5A">
		<td width="35%" style="color:#FFFC00;padding-left:7px;">
			<b>${name}</b>님
		</td>
		<td width="65%" align="right" style="color:#ffffff;padding-right:7px;">
			<a href="#" style="color:#FF9900;">받은쪽지</a>
			|
			<a href="#" style="color:#ffffff;">보낸쪽지</a>
			
			|
			<a href="#" style="color:#ffffff;">보관쪽지</a>
			
			|
			<a href="#" style="color:#ffffff;">친구목록</a>
			<!--
			|
			<a href="./list_glass.asp" style="color:yellow">CP안경</a>
			-->
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

			<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="stex">
				<tbody><tr align="center" height="25">
					<td width="30">
						<input type="checkbox" onclick="this.value=check(this.form.elements,1)">
					</td>
					<td width="330">
						<b>제목</b>
					</td>
					<td width="140">
						<b>보낸이</b>
					</td>
					<td width="50">
						<b>날짜</b>
					</td>
				</tr>
				<tr bgcolor="#808080"><td height="1" colspan="4"></td></tr>
				<tr bgcolor="#DFE9EC"><td height="3" colspan="4"></td></tr>
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
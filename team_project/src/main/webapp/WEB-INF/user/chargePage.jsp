<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">
</head>
<body>
<div class="popupHeader" >
	<span style="color: white; margin-left: 10px; margin-top:10px; font-size: 10pt;">포인트 충전</span>
</div>
	<h2></h2>
	<br>
	${name }님의 포인트 : <span id="userPoint"></span>원
	<input type="hidden" id="id" value="${id}">
	<input type="hidden" id="name" value="${name}">
	
	<br>
	<br>
	<select id="chargeValue">
		<option value="5000">5,000</option>
		<option value="10000">10,000</option>
		<option value="30000">30,000</option>
		<option value="50000">50,000</option>
		<option value="100000">100,000</option>
		<option value="500000">500,000</option>
		<option value="1000000">1,000,000</option>
	</select>
	<input type="button" id="chargeBtn" value="충전"><br>
	<span style="color:red; font-size:0.8em;">※현재는 카카오페이 결제만 지원합니다.</span>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
			type : 'post',
			url : '/team_project/user/getUserDetail',
			data : 'id=' + '${id}',
			dataType : 'json',
			success : function(data) {
				$('#userPoint').text(data.point);
			},
			error : function(err) {
				console.log(err);
			}
		})
	})
	function payment(user){
			
		console.log(user);
		IMP.init('imp46112010');
		IMP.request_pay({
			pg: "kakaopay.TC0ONETIME",
			pay_method: "card",
			merchant_uid: (user.name)+"21346789011111234123",
			name: "포인트 충전",
			amount: user.amount,
			buyer_email : "email@naver.com",
			buyer_name : user.name,
			buyer_tel : "010-0000-0000"
		},function(rsp){
			if(rsp.success){
				$.ajax({
					type : 'post',
					url: '/team_project/user/pointCharge',
					data : "id="+user.id+"&point="+user.amount,
					success : function(){
						alert(user.name+"님, "+user.amount+"원 충전되었습니다. ("+rsp.imp_uid+")");
					},
					error : function(){
						alert('결제완료 / 충전실패. 고객센터에 문의 하세요.')
					}
				})
			}else{
				alert("실패 : "+rsp.error_code+"/"+rsp.error_msg);
			}
		})
	}
	//결제 api 연동 (iamport)
	$('#chargeBtn').click(function(){
		var name= $('input#name').val();
		var amount = $('#chargeValue').val();
		var id= $('input#id').val();
		console.log(name+"/"+amount+"/"+id);
		var user = {"id":id,"name":name,"amount":amount};
		payment(user);
	})	
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
.container2{
	width: 1000px;
	height: 500px;
	margin: 80px auto;
}
.container_left{
	border: 1px solid;
	width: 500px;
	height: 500px;
	float: left;
}
.container_right{
	width : 400px;
	float: left;
	margin-left: 20px;
}
.container2:after{
	content: '';
	clear: both;
}
.container_content{
	
	width: 1000px;
	height: 400px;
	margin: 0 auto;
}
.container_content:after{
	content: '';
	clear: both;
}
#container2 {
   padding: 30px 20px;
   width: 1000px;
   margin: 0 auto;
}

#comment_write {
   padding: 20px 15px;
   border-bottom: 1px solid #7BAEB5;
}
      
#comment_write label {
   display: inline-block;
   width: 80px;
   font-size: 14px;
   font-weight: bold;
   margin-bottom: 10px;
}

#comment_write input[type='text'], #comment_write textarea {
   border: 1px solid #ccc;
   vertical-align: middle;
   padding: 3px 10px;
   font-size: 12px;
   line-height: 150%;
}

#comment_write textarea {
   width: 380px;
   height: 90px
}
      
.comment_item {
   font-size: 13px;
   color: #333;
   padding: 15px;
   border-bottom: 1px dotted #ccc;
   line-height: 150%;
}

.comment_item .writer {
   color: #555;
   line-height: 200%;
}
      
.comment_item .writer input {
   vertical-align: middle;
}
      
.comment_item .writer .name {
   color: #222;
   font-weight: bold;
   font-size: 14px;
}
#content{
	overflow: auto;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>



<div class="container2">
<input type="text" value="${param.product_seq}" name="product_seq" id="product_seq">
<input type="text" value="" name="hit" id="hit">
<input type="text" value="${id}" id="msgid">
	<div class="container_left">
		<img alt="이미지" id="img" width="100%" height="100%" style="border-radius: 10px;">
	</div>
	<div class="container_right">
		<hr>
		제목 : <span id="subject" name="subject" style="padding: 10px;"></span> <br>
		<hr>
		희망가 : <span id="hopeprice" name="hopeprice"></span><br>
		시작가 : <span id="startprice" name="startprice"></span><br>
		현재가 : <span id="nowprice" name="nowprice"></span><br>
		거래방식 : <span id="trade_way" name="trade_way"></span>
		<br>
		남은시간 : 추후 추가 예정<br>
		응찰 :  응찰건수 <span id="bidstatus" name="bidstatus">**</span> 회 (마우스 오버시 응찰 내역)<br>
		호가(증액) : <span id="unitprice" name="unitprice"></span><br>
		응찰가격 : 
		<input type="button" value="-" id="minus">
		<input type="number" name="bidprice" id="bidprice" style="text-align: center; width: 150px;">
		<input type="button" value="+" id="plus"><br>
		<input type="button" value="응찰하기" name="bidBtn" id="bidBtn">
	</div>
</div>
<div class="container_content">
<br>
<h3>상세정보</h3>
<hr>
<pre id="content" style="overflow: auto; width: 100%; height: 300px;white-space: pre-wrap;"></pre>
</div>
<div id="container2">
<hr>
	<div id="comment_write">
		<form id="comment_form">
			<!-- <div>
				<label for="user_name"> 작성자 </label>
				<input type="text" name="user_name" id="user_name">
			</div> -->
			<div>
				<label for="comment"> 덧글 내용 </label>
				<textarea name="comment" id="comment" style="width: 700px;"></textarea>
				<input type="submit" value="저장하기">
			</div>
		</form>
	</div>
	
	<!-- 동적처리 -->
	<ul id="comment_list"></ul>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script>
<script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
<script type="text/javascript" src="/team_project/resources/js/jquery.tmpl.min.js"></script>
<script type="text/javascript">
//출력
	$.ajax({
		type : 'post',
		url : '/team_project/product/getProductView',
		data : 'product_seq='+$('#product_seq').val(),
		dataType : 'json',
		success : function (data) {
			//alert(JSON.stringify(data));
			
			$('#img').attr('src','/team_project/resources/img/'+data.img1);
			$('#subject').text(data.subject);
			$('#hopeprice').text(data.hopeprice);
			$('#startprice').text(data.startprice);
			$('#nowprice').text(data.nowprice);
			$('#unitprice').text(data.unitprice);
			$('#content').text(data.content);
			$('#bidprice').val(data.nowprice);
			$('#hit').val(data.hit);
		},
		error : function (err) {
			
		}
	});
	//조회수
	 $.ajax({
		type : 'post',
		url : '/team_project/product/updateHit',
		data : 'product_seq='+$('#product_seq').val(),
		dataType : 'text',
		success : function (data) {
		},
		error : function (err) {
			alert(err);
		}
	}); 
	
</script>
<script type="text/javascript">



$('#plus').click(function () {
	var nowprice = eval($('#bidprice').val()+' + '+$('#unitprice').text()); 
	console.log(nowprice);
	if(nowprice>$('#hopeprice').text()){
		alert('입찰가는 희망가를 초과할 수 없습니다')	
	}else{
	$('#bidprice').val(nowprice);
	}
});
$('#minus').click(function () {
	var nowprice = eval($('#bidprice').val()+' - '+$('#unitprice').text());
	console.log(nowprice);
	if(nowprice<$('#nowprice').text()){
		alert('입찰가는 현재가 미만으로 설정할수 없습니다')	
	}else{
	$('#bidprice').val(nowprice);
	}
});


/* 응찰하기 버튼 */
$('#bidBtn').click(function () {
	$.ajax({
		url : '/team_project/bid/setBid',
		type: 'post',
		data : 'id='+'${id}'+'&product_seq='+$('#product_seq').val()+'&bidprice='+$('#bidprice').val()+'&subject='+$('#subject').text(),
		success : function(){
			alert("성공");
			$(function () {
				$.ajax({
					url : '/team_project/bid/bidSetHigh',
					type: 'post',
					data: 'product_seq='+$('#product_seq').val(),
					dataType : 'json',
					success : function(data){
						console.log(id);
					},
					error : function(err){
						console.log(err);
					}
				})

			})
			
		},
		error : function(err){
			console.log(err);
		}
	});
});
$('#bidstatus').click(function() {
	$.ajax({
		url:'/team_project/bid/getBidCount',
		type: 'post',
		data : 'product_seq='+$('#product_seq').val(),
		dataType:'text',
		success : function(data){
			$('#bidstatus').html(data)
		},
		error : function(err){
			alert(err)
		}
	})
})


</script>
</body>
</html>
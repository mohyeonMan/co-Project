<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">
.container{
	
	width: 1000px;
	height: 500px;
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
.container:after{
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
* {
   padding: 0;
   margin: 0;
   color: #333;
}
      
ul {
   list-style: none;
}
      
#container {
   padding: 30px 20px;
   width: 1000px;
   margin: 0 auto;
}

h1 {
   font-size: large;
   border-left: 10px solid #7BAEB5;
   border-bottom: 1px solid #7BAEB5;
   padding: 10px;
   width: auto;
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
</style>
</head>
<body>
<input type="text" value="${param.product_seq}" name="product_seq" id="product_seq">
<input type="text" value="${param.hit}" name="hit" id="hit">

<div class="container">
	<div class="container_left">
		<img alt="이미지" id="img" width="100%" height="100%" style="border-radius: 10px;">
	</div>
	<div class="container_right">
		<hr>
		제목 : <span id="subject" name="subject"></span> <br>
		<hr>
		희망가 : <span id="hopeprice" name="hopeprice"></span><br>
		시작가 : <span id="startprice" name="startprice"></span><br>
		현재가 : <span id="nowprice" name="nowprice"></span><br>
		거래방식 : <span id="trade_way" name="trade_way"></span>
		<br>
		남은시간 : 추후 추가 예정<br>
		응찰 : 응찰건수 ** 회 (마우스 오버시 응찰 내역)<br>
		호가(증액) : <span id="unitprice" name="unitprice"></span><br>
		응찰가격 : 
		<input type="button" value="-" id="minus">
		<input type="text" name="bidprice" id="bidprice" style="text-align: center; width: 150px;">
		<input type="button" value="+" id="plus"><br>
		<input type="button" value="응찰하기" name="bidBtn" id="bidBtn">
	</div>
</div>
<div class="container_content">
<br>
<h3>상세정보</h3>
<hr>
<pre id="content"></pre>
</div>
<div id="container">
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
<script type="text/javascript">
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
		},
		error : function (err) {
			
		}
	});
	//조회수
	$.ajax({
		type : 'post',
		url : '/team_project/product/updateHit',
		data : 'product_seq='+$('#product_seq').val()+'&hit='+$('#hit').val(),
		dataType : 'text',
		success : function (data) {
			alert('업뎃성공')
		},
		error : function (err) {
			alert('ss')
		}
	});
	
</script>
<script type="text/javascript">



$('#plus').click(function () {
	var nowprice = eval($('#bidprice').val()+' + '+$('#unitprice').text()); 
	console.log(nowprice);
	
	$('#bidprice').val(nowprice);
});
$('#minus').click(function () {
	var nowprice = eval($('#bidprice').val()+' - '+$('#unitprice').text());
	console.log(nowprice);
	$('#bidprice').val(nowprice);
});

/* 응찰하기 버튼 */
$('#bidBtn').click(function () {
	$.ajax({
		url : '/team_project/bid/setBid',
		type: 'post',
		data : 'id=testman&product_seq='+$('#product_seq').val()+'&bidprice='+$('#bidprice').val()+'&subject='+$('#subject').text(),
		success : function(){
			alert("성공");
		},
		error : function(err){
			console.log(err);
		}
	});
});
</script>
<!-- <script type="text/javascript">
$(function () {
	$('#comment_form').submit(function () {
		
		if(!$('#comment').val()){
			alert('내용을 입력하세요.');
			$('#comment').focus();
			return false;
		}
		
		var date = new Date();
		var yy = date.getFullYear();
		var mm = date.getMonth()+1;
		var dd = date.getDate();
		var hh = date.getHours();
		var mi = date.getMinutes();
		var ss = date.getSeconds();
		
		if(mm<10) { mm="0"+mm};
		if(dd<10) { dd="0"+dd};
		if(hh<10) { hh="0"+hh};
		if(mi<10) { mi="0"+mi};
		if(ss<10) { ss="0"+ss};
		
		var today = yy+"-"+mm+"-"+dd+" "+hh+":"+mi+":"+ss;
		
		//<li class='comment_item'>
		var new_li = $('<li>');
		new_li.addClass('comment_item');
		
		var write_p = $('<p>');
		write_p.addClass('writer');
		
		var name_span = $('<span>');
		name_span.addClass('name');
		name_span.html($('#user_name').val()+'님');
		
		var date_span = $('<span>');
		date_span.html(' / '+today + ' ');
		
		var del_input = $('<input>');
		del_input.attr({
			'type' : 'button',
			'value' : '삭제하기'
		});
		del_input.addClass('delete_btn');
		
		var content_p = $('<p>');
		content_p.html($('#comment').val());
		
		write_p.append(name_span)
				.append(date_span)
				.append(del_input);
		
		new_li.append(write_p).append(content_p);
		
		$('#comment_list').append(new_li);
		$('#user_name').val('');
		$('#comment').val('');
		
		return false;
	});
	//삭제하기
	$(document).on('click', '.delete_btn', function () {
		if(confirm('선택하신 항목을 삭제하시겠습니까?')){
			$(this).parents('.comment_item').remove();
		}
	});
});
</script> -->
</body>
</html>
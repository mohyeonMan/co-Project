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
#content{
	overflow: auto;
}
</style>
</head>
<body>
<input type="hidden" value="${param.product_seq}" name="product_seq" id="product_seq">
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
		응찰 :  응찰건수 <span id="bidstatus" name="bidstatus">**</span> 회 (마우스 오버시 응찰 내역)<br>
		호가(증액) : <span id="unitprice" name="unitprice"></span><br>
		응찰가격 : 
		<input type="button" value="-" id="minus">
		<input type="number" name="bidprice" id="bidprice" style="text-align: center; width: 150px;">
		<input type="button" value="+" id="plus"><br>
		<input type="button" value="응찰하기" name="bidBtn" id="bidBtn">
		<input type="hidden" name="productid" id="productid">
		<input type="hidden" id="hit">
	</div>
</div>
<div class="container_content">
<br>
<h3>상세정보</h3>
<hr>
<pre id="content" style="overflow: auto; width: 100%; height: 300px;white-space: pre-wrap;"></pre>
</div>
<br>
<hr>
<div id="container">
	<div class="card mb-2">
		<div class="card-header bg-light">
	        <i class="fa fa-comment fa"></i> 댓글
		</div>
		<div class="card-body">
		<ul class="list-group list-group-flush">
		    <li class="list-group-item">
			<div class="form-inline mb-2">
			</div>
			<textarea class="form-control" id="comment" rows="3"></textarea>
			<input type="button" class="btn btn-dark mt-3" id="commentSubmit" value="작성하기"></button>
		    </li>
		</ul>
		</div>
	</div>
</div>
	<div class="card mb-2" id="commentlist">
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/jquery.tmpl.min.js"></script>
<script type="text/x-jquery-tmpl" id="commentTemplate">
<div class="card mb-2">
	<div class="card-body">
		<ul class="list-group list-group-flush">
		    <li class="list-group-item">
			<div class="form-inline mb-2" id="\${comment_seq}">
				<div class="form-control ml-2">작성자 : \${comment_id} </div>
				<div class="form-control ml-2">작성 시간 : \${logtime}</div>
				<textarea class="form-control" rows="3" readonly>\${comment_content}</textarea>
				<button type="button" class="btn btn-dark mt-3"  onClick="updateComment(\${comment_seq})">수정하기</button>
				<button type="button" class="btn btn-dark mt-3"  onClick="deleteComment(\${comment_seq})">삭제하기</button>
			</div>
		    </li>
		</ul>
	</div>
</div>
</script>
<script type="text/javascript">
	$.ajax({
		type : 'post',
		url : '/team_project/product/getProductView',
		data : 'product_seq='+$('#product_seq').val(),
		dataType : 'json',
		success : function (data) {
			$('#img').attr('src','/team_project/resources/img/'+data.img1);
			$('#subject').text(data.subject);
			$('#hopeprice').text(data.hopeprice);
			$('#startprice').text(data.startprice);
			$('#nowprice').text(data.nowprice);
			$('#unitprice').text(data.unitprice);
			$('#content').text(data.content);
			$('#bidprice').val(data.nowprice+data.unitprice);
			$('#productid').val(data.id);
			$('#hit').val(data.hit);
			 $.ajax({
					type : 'post',
					url : '/team_project/product/updateHit',
					data : 'product_seq='+$('#product_seq').val()+'&hit='+$('#hit').val(),
					dataType : 'json',
					success : function (data) {
					},
					error : function (err) {
					}
				}); 
		},
		error : function (err) {
			
		}
	});
	$.ajax({
		type : 'post',
		url : '/team_project/prdComment/getComment',
		data : 'product_seq='+$('#product_seq').val(),
		dataType : 'json',
		success : function (data) {
			
			  $.each(data,function(index, items){
				  var tmpl= $('#commentTemplate').tmpl(data[index]);	
	 				$('#commentlist').append(tmpl);
				/*  $('<tr/>',{text: items.comment_id})
				 .append($('<td>',{text:items.comment_id}))
				 .append($('<td>',{text:items.comment_content}))
				 .append($('<td>',{text:items.logtime}))
				 .append($('<input>',{type:'button',id:items.comment_content, value:"수정" , text:items.comment_id ,height:'30',width :'50', onclick :'updateComment(this.id)' }))
				 .append($('<input>',{type:'button',id:items.comment_seq,  text :"삭제",height:'30',width :'50', onclick : 'deleteComment(this.id)'}))
				 .appendTo($('#commentA')) */
			 }) 
		},
		error : function (err) {
			
		}
	})
	
	
	
</script>
<script type="text/javascript">
$('#commentSubmit').click(function () {
	if('${id}'!=''){
	$.ajax({
		url : '/team_project/prdComment/commentSet',
		type: 'post',
		data : 'comment_id='+'${id}'+'&product_seq='+$('#product_seq').val()+'&comment_content='+$('#comment').val(),
		dataType : 'json',
		success : function(data){
				alert('댓글 작성 성공')
		},
		error : function(err){
		console.log(err)
		}
	});
	location.reload()
		}else{
			alert('댓글달려면 로그인ㅇ')
	}
})
function updateComment(data) {
	var id = data+''
	var up = document.getElementById(id).children[2] 
	var ch = document.getElementById(id).children[3]
	var del = document.getElementById(id).children[4]
	ch.setHTML('수정')
	del.setHTML('취소')
	up.removeAttribute('readonly')
	ch.removeAttribute('onClick')
	del.removeAttribute('onClick')
	ch.setAttribute('onClick',"updateSubmit("+data+")")
	del.setAttribute('onClick',"cancelupdateSubmit("+data+")")
	}
function deleteComment(data) {
	var check = confirm('댓글을 삭제 하시겟습니까?')
	if(check){
		$.ajax({
			url : '/team_project/prdComment/deleteComment',
			type: 'post',
			data : 'comment_seq='+data,
			success : function(){
					alert('댓글 삭제 완료')
				location.reload()
			},
			error : function(err){
				console.log(err);
			}
		});
	}else{
		
	}
	
}
function cancelupdateSubmit(data) {
	var id = data+''
	var up = document.getElementById(id).children[2] 
	var ch = document.getElementById(id).children[3]
	var del = document.getElementById(id).children[4]
	ch.setHTML('수정하기')
	del.setHTML('삭제하기')
	up.setAttribute('readonly','readonly')
	ch.removeAttribute('onClick')
	del.removeAttribute('onClick')
	ch.setAttribute('onClick',"updateComment("+data+")")
	del.setAttribute('onClick',"deleteComment("+data+")")
}
function updateSubmit(data) {
	
	var id = '#'+data+'>textarea'
	var updatecon = $(id).val()
	console.log(data)
	console.log(updatecon)

	var check = confirm('댓글을 수정 하시겟습니까?')
	if(check){
		$.ajax({
			url : '/team_project/prdComment/updateComment',
			type: 'post',
			data : 'comment_seq='+data+'&comment_content='+updatecon,
			success : function(){
					alert('댓글 수정 완료')
				location.reload()
			},
			error : function(err){
				console.log(err);
			}
		});
	}else{
		
	}
	
}

$('#plus').click(function () {
	var nowprice = eval($('#bidprice').val()+' + '+$('#unitprice').text()); 
	console.log(nowprice);
	if(nowprice>$('#hopeprice').text()){
		alert('입찰가는 희망가를 초과할 수 없습니다')	
		$('#bidprice').val($('#hopeprice').text());
	}else{
	$('#bidprice').val(nowprice);
	}
});
$('#minus').click(function () {
	var nowprice = eval($('#bidprice').val()+' - '+$('#unitprice').text());
	console.log(nowprice);
	if(nowprice<$('#nowprice').text()){
		alert('입찰가는 현재가 미만으로 설정할수 없습니다')	
		$('#bidprice').val($('#nowprice').text())
	}else{
	$('#bidprice').val(nowprice);
	}
});



/* 응찰하기 버튼 */
$('#bidBtn').click(function () {
	if(eval($('#bidprice').val())<eval($('#nowprice').text())){
		alert("응찰가는 현재가보다 높아야 합니다")
	}
	else{
	$.ajax({
		url : '/team_project/bid/setBid',
		type: 'post',
		data : 'id='+'${id}'+'&product_seq='+$('#product_seq').val()+'&bidprice='+$('#bidprice').val()+'&subject='+$('#subject').text(),
		success : function(){
			$(function () {
				$.ajax({
					url : '/team_project/bid/bidSetHigh',
					type: 'post',
					data: 'product_seq='+$('#product_seq').val(),
					dataType : 'json',
					success : function(data){
						
					},
					error : function(err){
						console.log(err)
					}
				})

			})
			location.reload()
		},
		error : function(err){
			console.log(err);
		}
		
	});
	
}
});
$('#bidstatus').click(function() {
	$.ajax({
		url:'/team_project/bid/getBidCount',
		type: 'post',
		data : 'product_seq='+$('#product_seq').val(),
		dataType:'text',
		success : function(data){
			$('#bidstatus').text(data)
		},
		error : function(err){
			alert(err)
		}
	})
})


</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">
.container{
	background-color : #DEC8ED;
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
	background-color: #DEC8ED;
	width: 1000px;
	height: 400px;
	margin: 0 auto;
}
.container_content:after{
	content: '';
	clear: both;
}
</style>
</head>
<body>
<input type="text" value="${product_seq}" id="product_seq">

<div class="container">
	<div class="container_left">
		<img alt="" src="../uploadFiles/222.gif" width="100%" height="100%">
	</div>
	<div class="container_right">
		<hr>
		제목 : ${subject} <br>
		<hr>
		희망가 : ${hopeprice}<br>
		시작가 : ${startprice}<br>
		현재가 : ${startprice}<br>
		거래방식 : ${trade_way}<br>
		남은시간 : <br>
		응찰 : <br>
		호가(증액) : ${unitprice}<br>
		응찰가격 : <br>
		<input type="button" value="응찰하기">
	</div>
</div>
<div class="container_content">
<br>
<h3>상세정보</h3>
<hr>
${content}
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$.ajax({
		url : '/co-project/product/getProductView.do',
		type: 'post',
		data: 'product_seq='+$('#product_seq').val(),
		dataType : 'json',
		success : function(data){
			
			
			//alert(JSON.stringify(data));
			//alert(data.list[0].id);
			
			/* $.each(data.list,function(index, items){
				var time = items.enddays_month+ '/' +items.enddays_day+ '/' +items.enddays_year+' '+items.enddays_hour+':'+items.enddays_min
				console.log(time);
				$('<div/>',{class:'col'}).append($('<div/>',{class: 'card',style:'width: 18rem;'})
											.append($('<img>',{src:'../images/original.gif',class:'card-img-top'}))
											.append($('<div/>',{class:'card-body'})
												.append($('<h5/>',{class:'card-title',text:items.subject}))
												.append($('<p/>',{class:'card-text',text:items.content})
													.append($('<br>'))
													.append($('<div/>',{class:'timer',id:items.product_seq})))
												.append($('<a/>',{href:'./detailedPage_2.do?product_seq='+items.product_seq,class:'btn btn-primary',text:'응찰하러가기'})))).appendTo($('#row'));
				CountDownTimer(time, items.product_seq)
			}); */
			
		},
		error : function(err){
			console.log(err);
		}
	});
});

</script>
</body>
</html>
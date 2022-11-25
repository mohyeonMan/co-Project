<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<!-- <button id="tcheck">시간확인</button> -->
<div id="wrap" style="display:block; width:80%; margin: auto;">
	<div id="fix_header">
		<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>
	</div>
	<select id="sort" name="sort">
		<option value="product_seq desc">최신순</option>
		<option value="nowprice desc">낙찰가 높은순</option>
		<option value="nowprice asc">낙찰가 낮은순</option>
	</select>
	<div class="container text-center" >
	  <div class="row row" id="row">
	  <!-- grid -->
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<script type="text/javascript">
function comma(num) {
num = String(num);
return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		url : '/team_project/product/getProductList',
		type: 'post',
		dataType : 'json',
		success : function(data){
			 $.each(data,function(index, items){
				 
					if(items.prdstatus=='낙찰'){
				$('<div/>',{class:'col-4'}).append($('<div/>',{class: 'card',style:'width: 18rem; margin-top : 20px; border-color: #EDEDED'})
											.append($('<img>',{src:'/team_project/resources/img/'+items.img1, class:'card-img-top', width : '100%', height : '250', alt : '대표이미지'}))
											.append($('<div/>',{class:'card-body'})
												.append($('<h5/>',{class:'card-title',text:items.subject}))
												.append($('<p/>',{class:'card-text',text:items.content})
													.append($('<br>'))
													.append($('<span>',{text:'시작가 : '+comma(items.startprice)+'원', id : 'startprice'}))
													.append($('<br>'))
													.append($('<span>',{text: '낙찰가 : '+comma(items.nowprice)+'원'})))
												.append($('<a/>',{href:'/team_project/product/productView?product_seq='+items.product_seq,class:'btn btn-primary',text:'정보보기'})))).appendTo($('#row'))
				 }				
				
			 }); 
			
		},
		error : function(err){
			console.log(err);
		}
	});
	
});
</script>
<script type="text/javascript">


$(document).on('change','#sort', function () {
	var selectSort = $('#sort').val();
	$('#row').empty();
	
	$.ajax({
		url : '/team_project/product/getProductSort',
		type: 'post',
		data : 'sort='+selectSort,
		dataType : 'json',
		success : function(data){
			
			 $.each(data,function(index, items){
				if(items.prdstatus=='낙찰')	{
					
				$('<div/>',{class:'col-4'}).append($('<div/>',{class: 'card',style:'width: 18rem; margin-top : 20px; border-color: #EDEDED'})
											.append($('<img>',{src:'/team_project/resources/img/'+items.img1, class:'card-img-top', width : '100%', height : '250', alt : '대표이미지'}))
											.append($('<div/>',{class:'card-body'})
												.append($('<h5/>',{class:'card-title',text:items.subject}))
												.append($('<p/>',{class:'card-text',text:items.content})
														.append($('<br>'))
														.append($('<span>',{text:'시작가 : '+comma(items.startprice)+'원', id : 'startprice'}))
														.append($('<br>'))
														.append($('<span>',{text: '낙찰가 : '+comma(items.nowprice)+'원'})))
														.append($('<a/>',{href:'/team_project/product/productView?product_seq='+items.product_seq,class:'btn btn-primary',text:'정보보기'})))).appendTo($('#row'))
				}			
			 }); 
			
		},
		error : function(err){
			console.log(err);
		}
	});
});

</script>


</body>
</html>
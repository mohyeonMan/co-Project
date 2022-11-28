<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<select id="opt">
	<option selected="selected">정렬선택</option>
	<option value="highprice">입찰 가격순</option>
	<option value="newestbidtime">최신 입찰순</option>
	<option value="newestproduct">최신 상품순</option>
	</select>	
	<table id="boardtable" border="1" cellpadding="5"  frame="hsides" rules="rows" bordercolor="black">
	
		<tr>
			<th width="100">물건번호</th>
			<th width="400">물건이름</th>
			<th width="100">입찰가격</th>
			<th width="100">입찰시간</th>
		</tr>
		
		<!-- 동적처리 자리 -->
	</table>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
			url:'/team_project/user/getMyBidList',
			type:'post', 
			data: 'id='+'${id}' ,
			dataType:'json',
			success:function(data){
				$.each(data,function(index,items){
					$('<tr/>',{class:'change'}).append($('<td/>',{
						align : 'center',
						text: items.product_seq
						})).append($('<td/>',{
								}).append($('<a/>',{
									href:'/team_project/product/productView?product_seq='+items.product_seq,
									text: items.subject
								}))
						).append($('<td/>',{
						text: items.bidprice
						})).append($('<td/>',{
						text: items.bidtime
						})).appendTo($('#boardtable'));
				});
 
				
				
			},
			error:function(err){
				alert("에러");
			}
		});
});

$('#opt').change(function () {
	$('.change').remove()
	if ($('#opt').val()=='newestbidtime') {
		$.ajax({
			url:'/team_project/user/getMyBidList',
			type:'post', 
			data: 'id='+'${id}',
			dataType:'json',
			success:function(data){
				$.each(data,function(index,items){
					$('<tr/>',{class:'change'}).append($('<td/>',{
						align : 'center',
						text: items.product_seq
						})).append($('<td/>',{
								}).append($('<a/>',{
									href:'/team_project/product/productView?product_seq='+items.product_seq,
									text: items.subject
								}))
						).append($('<td/>',{
						text: items.bidprice
						})).append($('<td/>',{
						text: items.bidtime
						})).appendTo($('#boardtable'));
				});
 
				
				
			},
			error:function(err){
				alert("에러");
			}
		});
	}
	else if($('#opt').val()=='newestproduct'){
		$.ajax({
			url:'/team_project/user/getMyBidList1',
			type:'post', 
			data: 'id='+'${id}',
			dataType:'json',
			success:function(data){
				$.each(data,function(index,items){
					$('<tr/>',{class:'change'}).append($('<td/>',{
						align : 'center',
						text: items.product_seq
						})).append($('<td/>',{
								}).append($('<a/>',{
									href:'/team_project/product/productView?product_seq='+items.product_seq,
									text: items.subject
								}))
						).append($('<td/>',{
						text: items.bidprice
						})).append($('<td/>',{
						text: items.bidtime
						})).appendTo($('#boardtable'));
				});
 
				
				
			},
			error:function(err){
				alert("에러");
			}
		})
	}
	else if($('#opt').val()=='highprice'){
		$.ajax({
			url:'/team_project/user/getMyBidList2',
			type:'post', 
			data: 'id='+'${id}',
			dataType:'json',
			success:function(data){
				$.each(data,function(index,items){
					$('<tr/>',{class:'change'}).append($('<td/>',{
						align : 'center',
						text: items.product_seq
						})).append($('<td/>',{
								}).append($('<a/>',{
									href:'/team_project/product/productView?product_seq='+items.product_seq,
									text: items.subject
								}))
						).append($('<td/>',{
						text: items.bidprice
						})).append($('<td/>',{
						text: items.bidtime
						})).appendTo($('#boardtable'));
				});
 
				
				
			},
			error:function(err){
				alert("에러");
			}
		})
	}
})
</script>
</body>
</html>
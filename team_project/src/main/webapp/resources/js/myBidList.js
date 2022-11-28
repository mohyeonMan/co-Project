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
$(document).ready(function(){
   var id = $('#msgid').val();
   if ( id == '') {
      $('#headerRight_login').show();
      $('#headerRight_logout').hide();
      $('#nameTag').hide();
      $('#quick-menu').hide();
   } else {
      $('#headerRight_login').hide();
      $('#headerRight_logout').show();
      $('#nameTag').show();
      $('#quick-menu').show();
   }
})


$('#btn-login').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력하세요.');
		$('#id').focus;
	}else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력하세요.');
		$('#pwd').focus;
	}else {
		$.ajax({
			url : '/team_project/user/login',
			type : 'post',
			data : $('#loginForm').serialize(), 
			dataType:'text',
			success: function(data){
				if(data == 'fail'){
					$('#pwdDiv').text('아이디 또는 비밀번호가 맞지 않습니다.');
					$('#pwdDiv').css('font-size','12pt');
				} else {
					location.href = '/team_project/';
				}
			},
			error : function(err){
				console.log(err);
			}
		});
	}
});


$('#logoutBtn').click(function () {
	$.ajax({
		url : '/team_project/user/logout',
		type : 'post',
		success: function(){
			location.href = '/team_project/';
		},
		error : function(err){
			console.log(err);
		}
	});
});

$('#leftScroll').click(function () {
	var scroll = $('.rolling-listed-item').scrollLeft();
	$('.rolling-listed-item').scrollLeft(scroll + 1000);
});

$('#rightScroll').click(function () {
	var scroll = $('.rolling-listed-item').scrollLeft();
	$('.rolling-listed-item').scrollLeft(scroll - 1000);
});


$('#messageBtn').click(function () {
	window.open('/team_project/message/messageList','message','width = 600, height = 500, top = 100, left = 200');
});

/* 3단위마다 콤마 */
function comma(num) {
num = String(num);
return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

   
   $.ajax({
      url : '/team_project/product/getProductList',
      type: 'post',
      dataType : 'json',
      success : function(data){
         //console.log(JSON.stringify(data));
         var data1 = data.concat();
         //최신 5개
         $.each($('.posted-info .subject .new'),function(index, items){
            $(items).text(data1[index].subject)
            $(items).attr('href','/team_project/product/productView?product_seq='+data1[index].product_seq)
         });
         $.each($('.thumb .new'),function(index, items){
            $(items).attr('src','/team_project/resources/img/'+data1[index].img1)
         });
         
         
         var data2 = data.filter(item => item.category_1 === '1');
         // 가전/디지털 5개
          $.each($('.posted-info .subject .digital'),function(index, items){
            $(items).text(data2[index].subject)
            $(items).attr('href','/team_project/product/productView?product_seq='+data2[index].product_seq)
         });
         $.each($('.thumb .digital'),function(index, items){
            $(items).attr('src','/team_project/resources/img/'+data2[index].img1)
         }); 
         
         
         var data3 = data.filter(item => item.category_1 === '2');
         // 스포츠/아웃도어 5개
          $.each($('.posted-info .subject .sports'),function(index, items){
            $(items).text(data3[index].subject)
            $(items).attr('href','/team_project/product/productView?product_seq='+data3[index].product_seq)
         });
         $.each($('.thumb .sports'),function(index, items){
            $(items).attr('src','/team_project/resources/img/'+data3[index].img1)
         }); 
      },
      error : function(err){
         console.log(err);
      }
   });  
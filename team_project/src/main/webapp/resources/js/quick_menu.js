$('#writeFormBtn').click(function () {
	window.open('/team_project/product/productWriteForm','productWriteForm','width = 650, height = 700, top = 100, left = 200');
});

$('#myPageBtn').click(function () {
	window.open('/team_project/user/myPage','myPage','width = 530, height = 600, top = 100, left = 200');
});
$('#chargePageBtn').click(function(){
	window.open('/team_project/user/chargePage','chargePage','width = 420, height = 540, top = 100, left = 200');
})

$(document).ready(function() {
    
   // 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
   var floatPosition = parseInt($("#quick-menu").css('top'));
   // 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
 
   $(window).scroll(function() {
      // 현재 스크롤 위치를 가져온다.
      var scrollTop = $(window).scrollTop();
      var newPosition = scrollTop + floatPosition + "px";
 
      /* 애니메이션 없이 바로 따라감
       $("#floatMenu").css('top', newPosition);
       */
 
      $("#quick-menu").stop().animate({
         "top" : newPosition
      }, 200);
 
   }).scroll();
   
    $.ajax({
       type : 'post',
       url : '/team_project/user/getMessageCount',
       data : 'id='+$('#msgid').val(),
       dataType : 'text',
       success : function (data) {
         console.log(data)
         if(data == 0)$('.badge').text()
         else $('.badge').text(data)
      },
      error : function (err) {
         console.log(err)
      }
    });
})


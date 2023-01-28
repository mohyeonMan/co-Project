function printTime() {
var clock = document.getElementById("clock");
var now = new Date();

clock.innerHTML = now.getFullYear() + ". " +
(now.getMonth()+1) + ". " +
now.getDate() + " " +
now.getHours() + ":" +
now.getMinutes() + ":" +
now.getSeconds();

setTimeout("printTime()", 1000);
}

window.onload = function() {
printTime();
};
	$('.close').hide();
	$('#sidebar').hide();
	$('.sidebar nav dd').hide();
	$('#nameTag').hide();
	$('#quick-menu').hide();
	
	
	
	$('#categoryBtn').click(function () {
		$('.close').toggle();
		$('.list').toggle();
		$('#sidebar').toggle();
	});
	
	$('#sidebar nav dt').click(function () {
		$(this).next('dd').slideToggle(200);
	});
	
	$('.category > a').on('click',function(){
		location.href='/team_project/product/productList?category_1='
		+($(this).parents('dd').parents('dl').index()-1)+
		'&category_2='+($(this).index()+1);
	})
	$('#logo').on('click',function(){
		location.href='/team_project/'
	})
	
	$('.userWriteFormBtn').click(function(){
		window.open('/team_project/user/writeForm','userWriteForm','width = 550, height = 500, top = 100, left = 200');
	})
	$('#userWriteFormBtn').click(function(){
		$('.userWriteFormBtn').trigger('click');
	})
	
$(document).ready(function(){
$.ajax({
	url : '/team_project/user/getUserDetail',
	type : 'post',
	data : 'id='+$('#msgId').val(), 
	success: function(data){
		$('#cash').text(data.point);
	},
	error : function(err){
		console.log(err);
	}
});
});
$(function() {
   if($('#msgId').val()!=''){
   $.ajax({
      url : '/team_project/user/getMyPoint',
      type: 'post',
      dataType : 'json',
      success : function(data){
         $('#cash').val(data)
      },
      error : function(err){
         console.log(err)
      }
   })
   } 
})
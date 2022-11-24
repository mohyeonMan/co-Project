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
<button id="tcheck">시간확인</button>
<div id="wrap" style="display:block; width:80%; margin: auto;">
	<div id="fix_header">
		<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>
	</div>
	<div class="container text-center" >
	  <div class="row row-cols-4" id="row">
	  <!-- grid -->
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<script type="text/javascript">
function CountDownTimer(dt, id)
{
    var end = new Date(dt);

    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;
    
    function showRemaining() {
        var now = new Date();
        var distance = end - now;
        if (distance < 0) {
            clearInterval(timer);
            document.getElementById(id).innerHTML = '응찰이 종료되었습니다!';
            return;
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);

        document.getElementById(id).innerHTML = days + '일 ';
        document.getElementById(id).innerHTML += hours + '시간 ';
        document.getElementById(id).innerHTML += minutes + '분 ';
        document.getElementById(id).innerHTML += seconds + '초';
    }
	
    timer = setInterval(showRemaining, 1000);
    /* if(timer = setTimeout()) */
    
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
				var time = items.enddays_month+ '/' +items.enddays_day+ '/' +items.enddays_year+' '+items.enddays_hour+':'+items.enddays_min
				CountDownTimer(time, items.product_seq);
				$('<div/>',{class:'col'}).append($('<div/>',{class: 'card',style:'width: 18rem; margin-top : 20px;'})
											.append($('<img>',{src:'/team_project/resources/img/'+items.img1, class:'card-img-top', width : '270', height : '250'}))
											.append($('<div/>',{class:'card-body'})
												.append($('<h5/>',{class:'card-title',text:items.subject}))
												.append($('<p/>',{class:'card-text',text:items.content})
													.append($('<br>'))
													.append($('<div/>',{class:'timer',id:items.product_seq})))
												.append($('<a/>',{href:'/team_project/product/productView?product_seq='+items.product_seq+'&hit='+(items.hit+1),class:'btn btn-primary',text:'응찰하러가기'})))).appendTo($('#row'));
				
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
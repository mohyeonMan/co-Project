<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">
.timer {
  display: inline;
  color: red;
}
</style>
</head>
<body>

<br><br><br>

<div class="container text-center">
	<div class="row" id="row">
	</div>
</div>

<input type="button" value="글쓰기" onclick="location.href='./detailedPageWriteForm.jsp'"/>
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
}
</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$.ajax({
		url : '/co-project/product/getProductList.do',
		type: 'post',
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			//alert(data.list[0].id);
			
			$.each(data.list,function(index, items){
				var time = items.enddays_month+ '/' +items.enddays_day+ '/' +items.enddays_year+' '+items.enddays_hour+':'+items.enddays_min
				console.log(time);
				$('<div/>',{class:'col'}).append($('<div/>',{class: 'card',style:'width: 18rem;'})
											.append($('<img>',{src:'../images/original.gif',class:'card-img-top'}))
											.append($('<div/>',{class:'card-body'})
												.append($('<h5/>',{class:'card-title',text:items.subject}))
												.append($('<p/>',{class:'card-text',text:items.content})
													.append($('<br>'))
													.append($('<div/>',{class:'timer',id:items.product_seq})))
												.append($('<a/>',{href:'#',class:'btn btn-primary',text:'응찰하러가기'})))).appendTo($('#row'));
				CountDownTimer(time, items.product_seq)
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
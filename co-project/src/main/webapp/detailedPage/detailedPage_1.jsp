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
	<div class="row">
		<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="../images/original.gif" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">상품명</h5>
		    <p class="card-text"> <div class="timer" id="newcountdown"></div></p>
		    <br>
		    <a href="#" class="btn btn-primary" onclick="location.href='./detailedPage_2.jsp'">응찰하러가기</a>
		    
		  </div>
		  </div>
		</div>
		<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="../images/original.gif" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">상품명</h5>
		    <p class="card-text"> <div class="timer" id="newcountdown2"></div></p>
		    <br>
		    <a href="#" class="btn btn-primary" onclick="location.href='./detailedPage_2.jsp'">응찰하러가기</a>
		    </div>
		  </div>
		</div>
		<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="../images/original.gif" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">상품명</h5>
		    <p class="card-text"> 
		    <div class="timer" id="newcountdown3"></div></p>
		    <br>
		    <a href="#" class="btn btn-primary" onclick="location.href='./detailedPage_2.jsp'">응찰하러가기</a>
		    </div>
		  </div>
		</div>
	</div>
</div>
<input type="button" value="글쓰기" onclick="location.href='./detailedPageWriteForm.jsp'"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


<script type="text/javascript">
CountDownTimer('11/11/2022 06:52 PM', 'newcountdown');
CountDownTimer('11/11/2023 06:52 PM', 'newcountdown2');
CountDownTimer('12/11/2022 06:52 PM', 'newcountdown3');

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
</body>
</html>
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
      <option value="nowprice desc">현재가 높은 순</option>
      <option value="nowprice asc">현재가 낮은 순</option>
   </select>
   <div class="container text-center" >
     <div class="row row" id="row">
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

/* 3단위마다 콤마 */
function comma(num) {
num = String(num);
return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/jquery.tmpl.min.js"></script>
<script type="text/x-jquery-tmpl" id="itemTemplate">
   <div class="card" style="width: 18rem; margin-top : 20px; border-color: #EDEDED">
      <img src="/team_project/resources/img/\${img1}" class="card-img-top" alt="대표이미지" style="width: 100%; height: 250px;">
      <div class="card-body">
         <h5 class="card-title">\${subject}</h5>
         <p class="card-text">
            <span id="startprice">시작가 : \${startprice}원</span><br>
            <span>현재가 : \${nowprice}원</span><br>
            <span>호가 : \${unitprice}원</span>
            <div class="timer" id="\${product_seq}"></div>
         </p>
         <a href="/team_project/product/productView?product_seq=\${product_seq}" class="btn btn-primary">응찰하러가기</a>
      </div>
   </div>
</script>
<script type="text/javascript">


$(document).ready(function(){
   var selectSort = $('#sort').val();
   
   $.ajax({
      url : '/team_project/product/getProductSort',
      type: 'post',
      data : 'sort='+selectSort,
      dataType : 'json',
      success : function(data){
         $.each(data,function(index,items){
            var end = new Date(items.endDate);
            var time=end.getMonth()+1+'/'+end.getDate()+'/'+end.getFullYear()+' '+end.getHours()+':'+end.getMinutes();
            
            CountDownTimer(time, items.product_seq) 
            var tmpl;	 
            if(data[index].prdstatus==null){
            tmpl= $('#itemTemplate').tmpl(data[index]);
            }
            $('#row').append(tmpl);
             })
         
      },
      error : function(err){
         console.log(err);
      }
   });

   $(document).on('change','#sort',function(){
   var selectSort = $('#sort').val();

   $('#row').empty();
   
   $.ajax({
      url : '/team_project/product/getProductSort',
      type: 'post',
      data : 'sort='+selectSort,
      dataType : 'json',
      success : function(data){
         $.each(data,function(index,items){
            var end = new Date(items.endDate);
            var time=end.getMonth()+1+'/'+end.getDate()+'/'+end.getFullYear()+' '+end.getHours()+':'+end.getMinutes();
            CountDownTimer(time, items.product_seq) 
            var tmpl;	 
            if(data[index].prdstatus==null){
            tmpl= $('#itemTemplate').tmpl(data[index]);
            }
            $('#row').append(tmpl);
             })
         
      },
      error : function(err){
         console.log(err);
      }
   });
   })
   
});
</script>

</body>
</html>
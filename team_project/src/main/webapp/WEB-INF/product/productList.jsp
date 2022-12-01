<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<title>Insert title here</title>
<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");

.tab .tab-menu.tab-horizon:before {
	position: absolute;
	bottom: 0;
	left: -16px;
	right: -16px;
	height: 1px;
	content: '';
	background-color: #D8D8D8;
}

.tab .tab-menu ul, .tab .tab-menu ol, .tab .tab-menu dl {
	width: 100%;
	height: auto;
	/* overflow: hidden; */
	list-style: none;
	margin: 0;
	padding: 0;
	cursor: default;
	position: relative;
}

.tab .tab-menu ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

.tab .tab-menu>ul>li {
	display: inline-block;
	width: auto;
	height: auto;
}

.tab .tab-menu ul>.tab .tab-menu li, .tab .tab-menu ol>.tab .tab-menu li
	{
	width: 100%;
	height: auto;
	overflow: visible;
	position: relative;
	float: left;
}

.tab .tab-menu>ul>li.on>.tab-item {
	color: #E54E2B;
	border-color: #172126;
}

.tab.tab-md .tab-menu>ul>li>.tab-item {
	line-height: 46px;
}

.tab .tab-menu>ul>li>.tab-item {
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	color: #172126;
	line-height: 46px;
	padding: 0 4px;
	border-bottom: 2px solid transparent;
}

.tab .tab-menu>ul>li+li {
	margin-left: 32px;
}

.tab .tab-menu>ul>li {
	display: inline-block;
	width: auto;
	height: auto;
}

.tab .tab-menu ul:after, .tab .tab-menu ol:after, .tab .tab-menu dl:after
	{
	content: '';
	display: table;
	clear: both;
}

.productList {
	width: 90%;
	margin: auto;
}

.tab .tab-menu.tab-horizon:before {
	/* position: absolute; */
	bottom: 0;
	left: -16px;
	right: -16px;
	height: 1px;
	content: '';
	background-color: #D8D8D8;
}

.mg-b-4u {
	width: 90%;
	/* margin: auto; */
	margin-top:80px;
}

.mg-b-4u .tab-horizon ul {
	text-align: center;
}

.mg-b-4u .tab-horizon ul li:hover {
	border-color: #172126;
}
.card{
	margin-left: 25px;
}
</style>
<body>

<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>

	<div class="tab tab-md mg-b-4u" id="c_size">
		<!-- DeskTop -->
		<div class="tab-menu tab-horizon">
			<ul>
				<li class="on">
					<a href="#" class="tab-item"
					data-tab-contents="Tab 1" data-tab-contents-group="A"
					style="color: #172126;">전체 매물</a>
				</li>
				<li class="">
					<a href="#" class="tab-item"
					data-tab-contents="Tab 2" data-tab-contents-group="A"
					style="color: #172126;">디지털/가전</a>
				</li>
				<li class=""><a href="#" class="tab-item"
					data-tab-contents="Tab 3" data-tab-contents-group="A"
					style="color: #172126;">아웃도어/스포츠</a></li>
				<li class=""><a href="#" class="tab-item"
					data-tab-contents="Tab 3" data-tab-contents-group="A"
					style="color: #172126;">홈/생활</a></li>
			</ul>
		</div>
	</div>

	<input type="hidden" value="${id}" id="msgid">
	<select id="sort" name="sort">
		<option value="product_seq desc">최신순</option>
		<option value="nowprice desc">현재가 높은 순</option>
		<option value="nowprice asc">현재가 낮은 순</option>
	</select>
	<div class="productList">
		<div class="row" id="row">
			<!— grid —>
		</div>
	</div>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script>
<script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
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
	$('#sort').trigger('change');
	
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
				var tmpl = $('#itemTemplate').tmpl(data[index]);
				console.log(tmpl)
				$('#row').append(tmpl);
 				})
			
		},
		error : function(err){
			console.log(err);
		}
	});
});
	
</script>
<script type="text/javascript">
function CountDownTimer(dt, id){
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
</body>
</html>
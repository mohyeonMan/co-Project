<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"><title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<style type="text/css">
div{
	border:1px dotted gray;
}
</style>
<link rel="stylesheet" href="/team_project/resources/css/collapse.css">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
</head>
<body>
	<div id="popupHeader" >
		
	</div>
	<h1>매물 등록</h1><br>
	
	<form action="write" method="post" enctype="multipart/form-data" id="productWriteForm">
		<table cellpadding="5">
			<tr height="50">
				<td width="200"><font size="2pt">매물명</font></td>
				<td width="400"><input type="text" placeholder='물품명' id="subject" name="subject" >
				<br><span class="checking" id="subjectDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">카테고리</font></td>
				<td width="400">
					<span id="category1"></span>
					<span id="category2"></span>
					<br><span class="checking" id="categoryDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">대표이미지</font></td>
				<td width="400"><input type="file" id="file" name="file" multiple="multiple" style='font-size:0.8em'>
				<br><span class="checking" id="imageDiv"></span></td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">추가이미지</font></td>
				<td width="400">
					<ul class="subimgadd"> 
						<li>
							<input type="file" id="subimg" name="file">
							<button  type="button"class="addBtn" style="vertical-align: sub">추가</button>
						</li> 
					</ul>
				</td>
			</tr>
			<tr>
				<td width="200"><font size="2pt">물품정보</font></td>
				<td width="400"><span class="checking" id="contentDiv"></span>
				<textarea cols="40" rows="5" class="form-control" id="content" name="content" style='min-height:200px' required placeholder="하자를 포함하여 물품정보를 상세하게 입력해주시고, 직거래 시 직거래 가능 지역을 물품정보에 입력하세요."></textarea><br>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">검색어</font></td>
				<td width="400"><input type="text" placeholder='검색어 사이에 쉼표를 입력' id="keywoed" name="keyword" ></td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">희망가</font></td>
				<td width="400"><input type="text" placeholder='희망가(원)' id="hopeprice" name="hopeprice" >
				<br><span class="checking" id="hopeDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">시작가</font></td>
				<td width="400"><input type="text" placeholder='시작가(원)' id="startprice" name="startprice" >
				<br><span class="checking" id="startDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">호가</font></td>
				<td width="400"><input type="text" placeholder='호가(원)' id="unitprice" name="unitprice" >
				<br><span class="checking" id="unitDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">거래방식</font></td>
				<td width="400">
					<select id="trade_way" name="trade_way" class="form-control" required >
						<option value="">선택하세요</option>
						<option value="1">직거래</option><!--직거래-->
						<option value="2">택배</option><!--택배-->
					</select>
					<br><span class="checking" id="tradeDiv"></span>
				</td>
			</tr>
			<tr height="50">
				<td width="200"><font size="2pt">경매종료 일시</font></td>
				<td>
					<input type="date" name="endDay" id="endDay">
					<input type="time" name="endTime" id="endTime" required>
					<br><span class="checking">최소 3시간의 입찰시간을 제공하여야합니다.</span>
					
				</td>
			</tr>
		
		</table>

		<div class="clearfix"></div>
		<hr>
		<div class='sp1'></div>
		<div style='width:100%;'>*사진업로드와 변환에 잠깐 시간이 걸립니다.<br>&nbsp;&nbsp;등록버튼 클릭후 잠시만 기다려주세요.</div>
		<div class='sp10'></div>
		<div align='center'>
			<input type="button" value="경매등록" id="productWriteBtn">
		</div>
		<div class="clearfix"></div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript">
//입찰종료 날짜,시간 등록제한.
function parse(time){
	 if(time<10){
		time = '0'+time;
	}
	return time;
}
$(document).ready(function(){

var today = new Date();
var tYear = parse(today.getFullYear());
var tMonth = parse(today.getMonth()+1);
var tDate = parse(today.getDate());
var tHour = parse(today.getHours());	
var tMinutes = parse(today.getMinutes());

	console.log((tHour+3)+':'+tMinutes)
	$('#endDay').prop({
		value:tYear+'-'+tMonth+'-'+tDate,
		min:tYear+'-'+tMonth+'-'+tDate
	});
	$('#endTime').prop({
		value:(tHour+3)+':'+tMinutes,
		min:(tHour+3)+':'+tMinutes,
		max:'23:59'
	})
	
})

/* 파일 업로드 추가 */
var maxAppend = 1;

$('.subimgadd .addBtn').on('click',function(){ 
   if(maxAppend >= 3){
      alert("파일 업로드 최대 개수는 3개 입니다.");
      return;
   }else{
       $('.subimgadd').append('<li><input type="file" multiple="multiple" name="file""> <button type="button" class="addBtn" onclick="addDel(this);">삭제</button></li>'); 
       maxAppend ++;
   }
   
 });
 
 function addDel(a){ 
    $(a).closest('li').remove(); 
    maxAppend --;
 }
 
 
 /* 카테고리 2뎁스 추가 */
 //1depth
		$('#category1').load('/team_project/resources/text/category-data.html #category1-1', function () {
			$(this).show();
		});
		//2depth
		$(document).on('change','#category1 > select', function () {
			$('#category2').empty().hide();
			
			var target = $(this).find('option:selected').attr('data-target');
			console.log(target);
			
			var selector = '/team_project/resources/text/category-data.html '+target;
			$('#category2').load(selector, function () {
				$(this).show();
			});
		});
 
 
//매물작성 버튼 유효성검사
 $('#productWriteBtn').on('click',function(){
	$('#subjectDiv').empty();
	$('#categoryDiv').empty();
	$('#imageDiv').empty();
	$('#contentDiv').empty();
	$('#hopeDiv').empty();
	$('#startDiv').empty();
	$('#unitDiv').empty();
	$('#tradeDiv').empty();
	
	var subject = $('#subject').val();
	var category1 = $('#category1-1').val();
	var category2 = $('#category2 > select').val();
	var image = $('#file').val();
	var content = $('#content').val();
	var hope = $('#hopeprice').val();
	var start = $('#startprice').val();
	var unit = $('#unitprice').val();
	var trade = $('#trade_way').val();
	var date = $('#date').val();
	var time = $('#time').val(); 
	
	var access =true;
	console.log(category1+"_"+category2)
	if(!subject){
		$('#subjectDiv').text('매물명 입력');
		access =false;
	}if(category2 =='0'||category2 == undefined){
		$('#categoryDiv').text('카테고리 선택');
		access =false;
	}if(!image){
		$('#imageDiv').text('대표이미지 필수');
		access =false;
	}if(!content){
		$('#contentDiv').text('내용입력');
		access =false;
	}if(!hope){
		$('#hopeDiv').text('희망가 입력');
		access =false;
	}if(!start){
		$('#startDiv').text('시작가 입력');
		access =false;
	}if(!unit){
		$('#unitDiv').text('호가 입력');
		access =false;
	}if(!trade){
		$('#tradeDiv').text('거래방식 선택');
		access =false;
	}if(access){
		$('#productWriteForm').submit();
	} 
});
 
</script>
</body>
</html>
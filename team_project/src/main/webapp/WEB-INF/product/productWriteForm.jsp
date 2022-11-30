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


<div id="fix_header" >
	<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>
</div>


			<form action="write" method="post" enctype="multipart/form-data">
			
				<table border="0" cellpadding="5">
					<tr>
						<td width="200"><font size="2pt">물품(*)</font></td>
						<td width="400"><input type="text" placeholder='물품명' id="subject" name="subject" ></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">카테고리(*)</font></td>
						<td width="400">
							<span id="category1"></span>
							<span id="category2"></span>
						</td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">대표이미지(*)</font></td>
						<td width="400"><input type="file" id="file" name="file" multiple="multiple" style='font-size:0.8em'></td>
					</tr>
					<tr bordercolor="red">
						<td width="200"><font size="2pt">추가이미지(*)</font></td>
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
						<td width="200"><font size="2pt">물품정보(*)</font></td>
						<td width="400"><textarea cols="40" rows="5" class="form-control" id="content" name="content" style='min-height:200px' required placeholder="하자를 포함하여 물품정보를 상세하게 입력해주시고, 직거래 시 직거래 가능 지역을 물품정보에 입력하세요."></textarea></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">검색어</font></td>
						<td width="400"><input type="text" placeholder='검색어 사이에 쉼표를 입력' id="keywoed" name="keyword" ></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">희망가(*)</font></td>
						<td width="400"><input type="text" placeholder='희망가(원)' id="hopeprice" name="hopeprice" ></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">시작가(*)</font></td>
						<td width="400"><input type="text" placeholder='시작가(원)' id="startprice" name="startprice" ></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">호가(*)</font></td>
						<td width="400"><input type="text" placeholder='호가(원)' id="unitprice" name="unitprice" ></td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">거래방식(*)</font></td>
						<td width="400">
							<select id="trade_way" name="trade_way" class="form-control" required >
								<option value="">선택하세요</option>
								<option value="1">직거래</option><!--직거래-->
								<option value="2">택배</option><!--택배-->
							</select>
						</td>
					</tr>
					<tr>
						<td width="200"><font size="2pt">경매종료 일시(*)</font></td>
						<%-- <td width="400">
							<select id="enddays_year" name="enddays_year" class="form-control">
								<option value="">년도선택</option>
								<option value="2022" selected>2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
							</select>
							<select id="enddays_month" name="enddays_month" class="form-control">
								<option value="">월선택</option>
								<option value="1">1월</option>
								<option value="2">2월</option>
								<option value="3">3월</option>
								<option value="4">4월</option>
								<option value="5">5월</option>
								<option value="6">6월</option>
								<option value="7">7월</option>
								<option value="8">8월</option>
								<option value="9">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
							</select>
							<input type="text" id="enddays_day" name="enddays_day" placeholder="일 입력" >
							<input type="text" id="enddays_hour" name="enddays_hour" placeholder="시간 입력" >
							<input type="text" id="enddays_min" name="enddays_min" placeholder="분 입력" > --%>
						<td>
							<input type="date" name="endDay" id="endDay" >
							<input type="time" name="endTime" id="endTime" >
						</td>
					</tr>
				
				</table>

				<div class="clearfix"></div>
				<hr>
				<div class='sp1'></div>
				<div style='width:100%;'>*사진업로드와 변환에 잠깐 시간이 걸립니다.<br>&nbsp;&nbsp;등록버튼 클릭후 잠시만 기다려주세요.</div>
				<div class='sp10'></div>
				<div align='center'>
					<input type="submit" value="경매등록" id="productWriteBtn">
				</div>

				<div class="clearfix"></div>
		</form>
			

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript">


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
			$('#category3').empty().hide();
			
			var target = $(this).find('option:selected').attr('data-target');
			console.log(target);
			
			var selector = '/team_project/resources/text/category-data.html '+target;
			$('#category2').load(selector, function () {
				$(this).show();
			});
		});
 
 
 
 /* $('#productWriteBtn').click(function(){
	
		
		$('#detailePageWriteForm').ajaxSubmit({
			url : '/miniproject/product/productWrite',
			type : 'post',
			processData: false,
			contentType: false, 
			data : $('#detailePageWriteForm').serialize(),// 주소창과 같이 데이터 담기
			success: function(){
					alert("글작성 완료");
				},
				error : function(err){
					console.log(err);
				}
		});
		
	
});  */
 
</script>
</body>
</html>
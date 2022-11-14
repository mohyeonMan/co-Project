<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">

	<div class="row" id="loadDataItems"><!-- aJax 데이타 로딩 시작-->
	
		<div class="col-lg-12 col-sm-12 col-md-12">

			<form name='detailePageWriteForm' id='detailePageWriteForm' action='' method=post enctype='multipart/form-data'>

				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>물품</div>
					<div style='width:85%;float:left'>
						<div style='float:left;width:100%'>
							<input type="text" id="subject" name="subject" placeholder='물품명'>
						</div>		
					</div>
				</div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>
				
				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>카테고리</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:160px'>
							<select id="category" name="category">
								<option value="">선택하세요</option>
								<option value="1">디지털/가전</option><!--디지털/가전-->
								<option value="2">아웃도어/스포츠</option><!--아웃도어/스포츠-->
								<option value="3">자동차</option><!--자동차-->
								<option value="4">홈/생활</option><!--홈/생활-->
								<option value="5">패션/잡화/뷰티</option><!--패션/잡화/뷰티-->
							</select>
						</div>
						<div style="width:160px;float:left" id="sub_category">  </div>
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>

				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>대표이미지</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:50px' id='View_area1'></div>
						<div style='float:left; width:210px'>
							<input type="file" id="mainimg" name="mainimg" style='font-size:0.9em' required placeholder="이미지1" onchange="previewImage(this,'View_area1')">
						</div>
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>추가이미지</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:50px' id='View_area5'></div>
						<div style='float:left; width:210px'>
							<input type="file" class="form-control" id="image5" name="image5"  style='font-size:0.9em' placeholder="이미지5" onchange="previewImage(this,'View_area5')">
						</div>
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>물품정보</div>
					<div style='width:85%;float:left'>
						<textarea  class="form-control" id="content" name="content" style='min-height:200px' required placeholder="하자를 포함하여 물품정보를 상세하게 입력해주시고, 직거래 시 직거래 가능 지역을 물품정보에 입력하세요."></textarea> 
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>검색어</div>
					<div style='width:85%;float:left'>
						<div style='float:left;width:100%'>
							<input type="text" id="searchwords" name="searchwords" value=''  class="form-control" placeholder='검색어 사이에 쉼표를 입력해주세요.'>
						</div>		
					</div>
				</div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>희망가</div>
					<div style='width:140px;float:left'>
						<input type="text" class="form-control" id="hopePrice" name="hopePrice" placeholder="희망가 (원)">
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>시작가</div>
					<div style='width:140px;float:left'>
						<input type="text" class="form-control" id="startPrice" name="startPrice" placeholder="시작가 (원)">
					</div>									
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>
										  

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>호가</div>
					<div style='width:85%;float:left'>
						<div style='width:140px;float:left'>
							<input type="text" class="form-control" id="unitPrice" name="unitPrice" placeholder="호가 (원)" onkeyup="inputNumberFormat(this)" value='' required>
						</div>
						<div style='width:140px;float:left;margin-top:7px'>응찰 시 올리는 금액</div><!--응찰 시 올리는 금액-->	
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>거래방식</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:130px'>
							<select id="trade_way" name="trade_way" class="form-control" required >
								<option value="">선택하세요</option>
								<option value="1">직거래</option><!--직거래-->
								<option value="2">택배</option><!--택배-->
							</select>
						</div>
						<div style="width:130px;float:left" id="delfee">  </div>	
					</div>
					
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>경매종료</div>
					<div style='width:85%;float:left'>
					<div style='width:50%;float:left'>
						<select id="endDays_year" name="endDays_year" class="form-control">
							<option value="">년도선택</option>
							<option value="2022" selected>2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
						</select>
						<select id="endDays_month" name="endDays_month" class="form-control">
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
						<input type="text" id="endDays_day" name="endDays_day" placeholder="일 입력" >
						<input type="text" id="endDays_hour" name="endDays_hour" placeholder="시간 입력" >
						<input type="text" id="endDays_min" name="endDays_min" placeholder="분 입력" >
					</div>
					</div>
					
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>

				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>자동연장</div>
					<div style='width:85%;float:left'>
						<input type='checkbox' id='extend' name='extend' value='Y' checked>  응찰이 없으면 설정한 기간만큼 자동으로 연장됩니다.											
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>

				<div class="clearfix"></div>
				<hr>
				<div class='sp1'></div>
				<div style='width:100%;'>*사진업로드와 변환에 잠깐 시간이 걸립니다.<br>&nbsp;&nbsp;등록버튼 클릭후 잠시만 기다려주세요.</div>
				<div class='sp10'></div>
				<div align='center'>
					<input type="button" value="경매등록" id="productWriteBtn">
					<button type="submit" style='background-color:#000000;border-radius:0;border-color:#000000;padding:5px;color:#FFFFFF;font-size:1.0em;cursor:pointer'>경매등록</button><!--경매등록-->
				</div>

				<div class="clearfix"></div>
		</form>
			
		</div>
		<div class='sp20'></div>
	</div> <!-- row -->
</div><!--</container>-->


</body>
</html>
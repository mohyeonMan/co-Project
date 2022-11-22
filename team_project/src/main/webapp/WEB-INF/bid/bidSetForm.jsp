<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<input type="hidden" id="product_seq"  name = "product_seq" value="${param.product_seq}">
<body>
<div class="container">

	<div class="row" id="loadDataItems"><!-- aJax 데이타 로딩 시작-->
	
		<div class="col-lg-12 col-sm-12 col-md-12">

			<form name='setBidForm' id='setBidForm' >

				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>물건이름</div>
					<div style='width:85%;float:left'>
						<div style='float:left;width:100%'>
							<input type="text" id="subject" name="subject" readonly="readonly">
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
						<input type="text" id="category" name="category" readonly="readonly">
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
							<img id="image" width:50px'>
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
					<div style='width:15%;float:left'>추가이미지1</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:50px' id='View_area5'></div>
						<div style='float:left; width:210px'>
							<img id="image1" width:50px'>
						</div>
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>
				 <div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>추가이미지2</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:50px' id='View_area5'></div>
						<div style='float:left; width:210px'>
							<img id="image2" width:50px'>
						</div>
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>
				 <div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>추가이미지3</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:50px' id='View_area5'></div>
						<div style='float:left; width:210px'>
							<img id="image3" width:50px'>
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
						<textarea cols="40" rows="5 class="form-control" id="content" name="content" style='min-height:200px' readonly="readonly"></textarea> 
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>거래방식</div>
					<div style='width:85%;float:left'>
						<div style='float:left; width:130px'>
							<input id="trade_way" name="trade_way" type="text" readonly="readonly" />
						</div>
						<div style="width:130px;float:left" id="delfee">  </div>	
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
					<div style='width:15%;float:left'>희망가</div>
					<div style='width:140px;float:left'>
						<input type="text" class="form-control" id="hopeprice" name="hopeprice" readonly="readonly">
					</div>
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				</div>


				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>


				<div style='font-size:0.9em;width:100%'>
					<div style='width:15%;float:left'>시작가</div>
					<div style='width:140px;float:left'>
						<input type="text" class="form-control" id="startprice" name="startprice" placeholder="시작가 (원)" readonly="readonly">
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
							<input type="text" class="form-control" id="unitprice" name="unitprice" placeholder="호가 (원)" readonly="readonly">
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
					<div style='clear:both;font-size:0;height:1px;width:1px'></div>
				<div class='sp10'></div>
				<div style='clear:both;font-size:0;height:1px;width:100%;background-color:#eee'></div>
				<div class='sp10'></div>



				<div class="clearfix"></div>
				<hr>
				<div class='sp1'></div>
				<div class='sp10'></div>
				<div align='center'>
					<input type="submit" value="응찰" id="setBidBtn">
				</div>
				
				<div class="clearfix"></div>
				<input type="hidden" id="product_seq"  name = "product_seq" value="${param.product_seq}">
				<input type="hidden" id="bidprice"  name = "bidprice">
				<input type="hidden" id="id"  name = "id" value="1111">
		</form>
			
		</div>
		<div class='sp20'></div>
	</div> <!-- row -->
</div><!--</container>-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../resources/js/bid.js"></script>
<script type="text/javascript">

$(function () {
	$.ajax({
		url : '/team_project/product/getView',
		type: 'post',
		data:'product_seq='+$('#product_seq').val(),
		dataType : 'json',
		success : function(json){
			/* alert(JSON.stringify(json)) */
			$('#subject').val(json.subject)
			var category = json.category_1
			if(category=="1"){
				$('#category').val('디지털/가전')
			}else if(category=="2"){
				$('#category').val('아웃도어/스포츠')
			}else if(category=="3"){
				$('#category').val('자동차')
			}else if(category=="4"){
				$('#category').val('홈/생활')
			}else{
				$('#category').val('패션/잡화/뷰티')
			}
			$('#hopeprice').val(json.hopeprice)
			$('#content').val(json.content)
			$('#unitprice').val(json.unitprice)
			$('#startprice').val(json.startprice)
			$('#trade_way').val(json.trade_way)
			var trade_way = json.trade_way
			if(trade_way=="1"){
				$('#trade_way').val('직거래')
			}else if(trade_way=="2"){
				$('#trade_way').val('택배')
			}
			$('#image').attr('src','/team_project/resources/img/'+json.img1)
			$('#image1').attr('src','/team_project/resources/img/'+json.img2)
			$('#image2').attr('src','/team_project/resources/img/'+json.img3)
			$('#image3').attr('src','/team_project/resources/img/'+json.img4) 
			$('#bidprice').val(json.hopeprice+json.startprice)
			
		},
		error : function(err){
			alert('안됨');
		}
	});
});


</script>
</body>
</html>
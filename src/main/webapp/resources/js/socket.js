var socket  = null;
$(function(){
	   // 웹소켓 연결
	    sock = new SockJS("value","'/echo-ws/'");
	    socket = sock;

	    // 데이터를 전달 받았을때 
	    sock.onmessage = onMessage; // toast 생성
	    
	    
	 // toast생성 및 추가
	    function onMessage(evt){
	        var data = evt.data;
	        // toast
	        let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
	        toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
	        toast += "<button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
	        toast += "<span aria-hidden='true'>&times;</span></button>";
	        toast += "</div> <div class='toast-body' >" + data + "</div></div>";
	        $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
	        $(".toast").toast({"animation": true, "autohide": false});
	        $('.toast').toast('show');
	   		 };   
	    
	       $(document).on('click','.toast-header .close',function (){
	          $(this).parents('.toast').remove();
	       
	       });
	    
	 setInterval(function() {
	   		$.ajax({
	   	 		type : 'post',
	   	 		url : '/team_project/product/showGettingPrd',
	   	 		dataType : 'json',
	   	 		success : function (data) {
	   	 			$('#msgSeq').val(data.product_seq)
	   	 			let type = '70';
	        		let target = data.get_id;
	       			let content = "응찰하신 '"+data.subject+"' 상품이 낙찰되었습니다.";
	       			let msgseq = data.product_seq
	        		let url = '/team_project/message/messageList';
	       		$.ajax({
	            		type: 'post',
	           	 		url: '/team_project/test/saveNotify',
	            		data: {
	               		target: target,
	               	 	content: content,
	                	type: type,
	                	url: url,
	                	msgseq : msgseq
	           			},
	          			success: function(){    // db전송 성공시 실시간 알림 전송
	          				console.log("관리자,"+target+","+content+","+url + ","+msgseq)
	          				sock.send("관리자,"+target+","+content+","+url + ","+msgseq);
	          				$.ajax({
	          			       type : 'post',
	          			       url : '/team_project/user/getMessageCount',
	          			       data : 'id='+$('#msgid').val(),
	          			       dataType : 'text',
	          			       success : function (data) {
	          			         console.log(data)
	          			         if(data == 0)$('.badge').text()
	          			         else $('.badge').text(data)
	          			      },
	          			      error : function (err) {
	          			         console.log(err)
	          			      }
	          			    });
	          			  }
	      			  });
	       			 $('#msgContent').val('');   // textarea 초기화
	   			},
	   			error : function (err) {
	   			}
	   	 	});
	   	}, 3000);
	        
	        
	        
	        
	    
})
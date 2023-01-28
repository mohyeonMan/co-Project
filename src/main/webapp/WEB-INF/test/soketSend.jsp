<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="writer"></div>
<div id="receiver"></div>

<div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <input type="text" value="${id}">
        <textarea rows="" cols=""></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="notifySendBtn">Send</button>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript">




var socket = null;
connect();

function connect() {
	var ws = new WebSocket("ws://localhost:8080/test/soketSend");
	socket = ws;
	//이벤트 헨들러
	ws.onopen = function() {
		console.log('Info: connection opened.');
	};
	
	//소켓에 메시지를 보냈을 때(sess.sendMessage) 여기서 받아짐 
	ws.onmessage = function (event) {
		var sm = event.data;
		var sl = sm.split(',');
		$("#writer").text("보내는 이 : " + sl[0]);
		$("#receiver").text("받는 이 : " + sl[1]);
		$("#content").text("내용: " + sl[2]);
		
		console.log("ReceiveMessage:" + event.data+'\n');
	};
	
	ws.onclose = function (event) { 
		console.log('Info: connection closed'); 
		//setTimeout( function() {connect(); }, 1000); // retry connection!!
	};
	
	ws.onerror = function (err) { console.log('Error:', err); };
}








//notifySend
$('#notifySendBtn').click(function(e){
    let modal = $('.modal-content').has(e.target);
    let type = '70';
    let target = modal.find('.modal-body input').val();
    let content = modal.find('.modal-body textarea').val();
    let url = '${contextPath}/test/soket';
    
    console.log(target);
    console.log(content);
    console.log(type);
    console.log(url);
    // 전송한 정보를 db에 저장	
    $.ajax({
        type: 'post',
        url: '/team_project/test/saveNotify',
        data: {
            target: target,
            content: content,
            type: type,
            url: url
        },
        success: function(){    // db전송 성공시 실시간 알림 전송
            // 소켓에 전달되는 메시지
            // 위에 기술한 EchoHandler에서 ,(comma)를 이용하여 분리시킨다.
            socket.send("관리자,"+target+","+content+","+url);	
        }
    });
    modal.find('.modal-body textarea').val('');	// textarea 초기화
});
</script>
</body>
</html>
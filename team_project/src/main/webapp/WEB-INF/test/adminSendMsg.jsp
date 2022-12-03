<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
<form>
    <div class="row mb-3">
        <label for="inputEmail" class="col-sm-2 col-form-label">받을사람</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="target" value="${param.id}">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputPassword" class="col-sm-2 col-form-label">보낼거</label>
        <div class="col-sm-10">
            <textarea type="text" class="form-control" id="content" placeholder="ㅇㅇ"></textarea>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-sm-10 offset-sm-2">
        </div>
    </div>
    <div class="row">
        <div class="col-sm-10 offset-sm-2">
            <button type="button" class="btn btn-primary" id="notifySendBtn">보내기</button>
        </div>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<!-- sockJS -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script> -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script>
// 전역변수 설정
var socket  = null;
$(document).ready(function(){
    // 웹소켓 연결
    sock = new SockJS("<c:url value="/echo-ws"/>");
    socket = sock;

    // 데이터를 전달 받았을때 
    sock.onmessage = onMessage; // toast 생성
	console.log(sock);
});
</script>

<script type="text/javascript">
//notifySend
$('#notifySendBtn').click(function(e){
    let type = '70';
    let target = $('#target').val();
    let content = $('#content').val();
    let url = '/team_project/message/messageList';
    
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
        success: function(){    
        	
            socket.send("관리자,"+target+","+content+","+url);
        	alert('보내씀')
        	window.close()
        }
    });
});
</script>

</body>
</html>
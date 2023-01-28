var primary = false
	$('#writeBtn').click(function(){
		$('#nameDiv').empty();
		$('#idDiv').empty();
		$('#pwdDiv').empty();
		
		var name = $('#name').val();
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		var pwdCheck = (pwd== $('#repwd').val());
		
		if(!name){
			$('#nameDiv').text("이름!!!!!");
			$('#name').focus();
		}
		if(!id){
			$('#idDiv').text("아이디!!!!!");
			$('#id').focus();
		}
		if(!pwd){
			$('#pwdDiv').text("비밀번호!!!!!");
			$('#pwd').focus();
		}
		if(!pwdCheck){
			$('#repwdDiv').text('비밀번호 재확인 실패');
		}
		if(!primary){
			$('#idDiv').text('중복확인이 필요합니다.')
		}
		if(name&&id&&pwd&&pwdCheck&&primary){
			$.ajax({
				type: 'post',
				url: '/team_project/user/write',
				data : $('#writeForm').serialize(),
				success: function(){
				alert("회원가입 완료");
				window.close();
				},
				error: function(err){
					console.log(err);
				}
			})
		}
	})
	$('#id').focusout(function(){
		
		if(!$('#id').val()){
			$('#idDiv').text("");
		}else{
			$.ajax({
				type:'post',
				url: '/team_project/user/checkId',
				data : 'id='+$('#id').val(),
				dataType:'text',
				success: function(data){
					if(data!=1){
						$('#idDiv').text("사용가능");
						primary = true
					}else if(data==1){
						$('#idDiv').text("사용불가능");
						primary = false;
					}
				},
				error:function(err){
					alert('error!');
				}
			})
		}
	})
$('#setBidBtn').click(function () {
	$.ajax({
		url : '/team_project/bid/setBid',
		type: 'post',
		data:$('#setBidForm').serialize(),
		dataType : 'text',
		success : function(data){
			alert("입찰 성공")
		},
		error : function(err){
			console.log(data)
			alert('안됨');
		}
	});
});

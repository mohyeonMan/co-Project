<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
        
</head>
<body class="bg-gradient-primary">
<div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Admin</h1>
                                    </div>
                                    <form class="user" id="adminlogin">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="id" name="id" placeholder="Enter ID">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="pwd" name="pwd" placeholder="Password">
                                        </div>
                                        <input type="button" id="adminlogintest" class="btn btn-primary btn-user btn-block" value="Login">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$('#adminlogintest').click(function() {
		$.ajax({
			url:'/team_project/user/adminlogintest',
			type:'post', 
			data: 'id='+$('#id').val()+'&pwd='+$('#pwd').val() ,
			dataType:'json',
			success:function(data){
				if(data.name === '관리자'){
					alert('로그인성공')
					location.href ='/team_project/user/adminPage'
				}else{
					alert('관리자계정이 아닙니다')
				}
			},
			error:function(err){
				alert('로그인 실패')
			}
		});
	})
</script>
</html>
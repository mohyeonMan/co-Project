<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-lg bg-light" id="nav-bar-opacity">
	<div class="container-fluid">
			<img src="/team_project/resources/img/logo.png"
				onclick="location.href='/team_project/'">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms+20 me-auto mb-2 mb-lg-0" id="nav-bar-center">

				<!-- 전체 -->
				<li class="nav-item"><a class="nav-link"
					href="/team_project/product/productList" role="button"> 전체 매물
				</a></li>
				<!-- dropdown1 -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"> 디지털/가전 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" id="1-1">생활가전</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="1-2">주방가전</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="1-3">계절가전</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="1-4">컴퓨터/노트북</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="1-5">모바일/디카</a></li>
					</ul></li>
				<!-- dropdown2 -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"> 아웃도어/스포츠 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" id="2-1">골프</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="2-2">캠핑/낚시/등산</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="2-3">헬스/수영/러닝</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="2-4">스키/보드/구기</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="2-5">자전거</a></li>
					</ul></li>
				<!-- dropdown2 -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"> 홈/생활 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" id="3-1">가구/조명</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-2">식품</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-3">생활/주방</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-4">반려동물 용품</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-5">도서/그림/악기</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-6">티켓/음반/공연</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-7">게임/취미</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" id="3-8">식물</a></li>
					</ul></li>

			</ul>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.1.min.js"></script>

<script>
	$('.nav-item.dropdown').hover(function() {
		$(this).children('.dropdown-menu').slideDown(100);
	}, function() {
		$(this).children('.dropdown-menu').slideUp(100);
	})

	$('.dropdown-item').click(function() {
		var category = $(this).attr('id');
		alert(category);
		location.href = "list?category=" + category
	})
</script>
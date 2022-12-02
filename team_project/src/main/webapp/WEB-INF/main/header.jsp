<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="header">
	<div id="headerLeft">
		<a id="categoryBtn">
			<span class="list"><i class="bi bi-list"></i></span>
			<span class="close">
				<i class="bi bi-x-lg"></i>
			</span>
		</a>
		<img src="/team_project/resources/img/logo1.jpeg" alt="로고" id="logo">
		<h1 id="nameTag"> <i class="bi bi-person-circle" style="font-size: 1.1em;"></i> ${name}님 환영합니다. </h1>
		<span id="clock"></span>
	</div>
	
	<div id="headerRight_login">
		
		<a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a> / <a>회원가입</a> / <a>공지사항</a>
		
	</div>
	<div id="headerRight_logout">
		<a href="#" id="logoutBtn">로그아웃</a>
		<div class="messageInput">
		</div>
	</div>
	
</div>
<div class="sidebar-wrap">
	<aside id="sidebar" class="sidebar">
		<nav>
			<dl>
				<dt class="on">
					<a href="/team_project/">
						<p class="label-txt"> <i class="bi bi-house"></i> 홈 </p>
					</a>
				</dt>
			</dl>
			<dl>
				<dt class="on">
					<a href="/team_project/product/productList" id="allProduct"><p class="label-txt"> <i class="bi bi-list-stars"></i> 전체 매물 </p></a>
				</dt>
			</dl>
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-pc-display-horizontal"></i> 디지털/가전 </p>
				</dt>
				<dd>
					<a href="#" class="category" id="1-1">
						<p class="label-txt">생활가전</p>
					</a>
					<a href="#" class="category" id="1-2">
						<p class="label-txt">주방가전</p>
					</a>
					<a href="#" class="category" id="1-3">
						<p class="label-txt">계절가전</p>
					</a>
					<a href="#" class="category" id="1-4">
						<p class="label-txt">컴퓨터/노트북</p>
					</a>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">모바일/디카</p>
					</a>
				</dd>
			</dl> 
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-globe2"></i> 아웃도어/스포츠 </p>
				</dt>
				<dd>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">골프</p>
					</a>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">캠핑/낚시/등산</p>
					</a>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">헬스/수영/러닝</p>
					</a>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">스키/보드/구기</p>
					</a>
					<a href="#" class="category" id="1-5">
						<p class="label-txt">자전거</p>
					</a>
				</dd>
			</dl>
			<dl>
				<dt class="on">
					<p class="label-txt"> <i class="bi bi-flower2"></i> 홈/생활 </p>
				</dt>
				<dd>
					<a href="#" class="category">
						<p class="label-txt">가구/조명</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">식품</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">생활/주방</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">반려동물 용품</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">도서/그림/악기</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">티켓/음반/공연</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">게임/취미</p>
					</a>
					<a href="#" class="category">
						<p class="label-txt">식물</p>
					</a>
				</dd>
			</dl>
		</nav>
	</aside>
</div>

<div class="quick-menu" id="quick-menu">
   <ul>
      <li>
      
         <a href="#"> 
         
            <span class="icon badge-container">
               <i class="bi bi-info-circle"></i>
            </span> 
            <span class="label">경매방법</span>
         </a>
         <hr width="80%">
      </li>
      <li>
         <a href="#" id="writeFormBtn"> 
            <span class="icon badge-container">
               <i class="bi bi-clipboard2"></i>
            </span> 
            <span class="label">글쓰기</span>
         </a>
         <hr width="80%">
      </li>
      <li>
         <a href="#" id="messageBtn"> 
            <span class="icon badge-container">
               <i class="bi bi-envelope"></i>
               <span class="badge"></span>
            </span> 
            <span class="label">메세지함</span>
         </a>
         <hr width="80%">
      </li>
      <li>
         <a href="/team_project/user/myPage"> 
            <span class="icon badge-container">
               <i class="bi bi-person"></i>
            </span> 
            <span class="label">회원정보수정</span>
         </a>
         <hr width="80%">
      </li>
      <li>
         <a href="#"> 
            <span class="icon badge-container">
               <i class="bi bi-cash-coin"></i>
            </span> 
            <span class="label">포인트충전</span>
         </a>
         <hr width="80%">
      </li>
       <li>
         <a href="/team_project/product/successedPrd"> 
            <span class="icon badge-container">
               <i class="bi bi-bag-check"></i>
            </span> 
            <span class="label">종료된물품</span>
         </a>
      </li>
   </ul>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 100px">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">로그인</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <div class="member_login">
               <form id="loginForm">
                  <div class="member_login_input" st>
                     <input type="text" name="id" id="id" placeholder="아이디" >
                     <div id="idDiv"></div>
                  </div>
                  <div class="member_login_input">
                     <input type="password" name="pwd" id="pwd" placeholder="비밀번호" autocomplete="on">
                     <div id="pwdDiv"></div>
                  </div>
                  <div class="member_login_btn">
                     <input type="button" class="btn btn-secondary" id="btn-login" value="로그인">
                     <input type="button" class="btn btn-secondary" value="회원가입" onclick="location.href='/team_project/user/writeForm'">
                  </div>
                  <div class="find_password" style="margin-top: 8px; margin-bottom: 8px;">
                     <a href="/forgot-password" style="color: black;">아이디 또는 비밀번호를 잊으셨나요?</a>
                  </div>
                  <div class="login_api">
                     <a href="https://kauth.kakao.com/oauth/authorize?client_id=268b20cd927776992bc7f4192b57984b&redirect_uri=http://localhost:8080/team_project/user/kakaoLogin&response_type=code"><img src="/team_project/resources/img/kakao_login_medium_narrow.png" style="width: 200px; height: 45px;"></a>
                  </div>
                  <div class="login_api">
                     <a href="/oauth2/authorization/google"><img src="/team_project/resources/img/naverlogin.png" style="width: 200px; height: 45px; margin-top: 8px;"></a>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

<div id="msgStack"></div>

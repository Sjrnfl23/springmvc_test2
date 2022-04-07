<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!doctype html>

<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style type="text/css">
.btn-size {
	width: 40px;
	height: 40px;
}

.margin {
	margin: 20px;
}

.text {
	text-align: center;
	margin: auto;
}

a {
	text-decoration: none;
}

.col-3 {
	background-color: #e9ecef;
}

p {
	margin-top: 5px;
	padding:3px;
}

@media screen and (max-width: 576px) {
	.table-responsive-sm {
		width: 100%;
	}
}
</style>
<link href="/infra/resources/css/sidebars.css" rel="stylesheet" type="text/css">

<title>회원 관리 페이지</title>
<!-- margin 오른쪽,회원 리스트 td창 작게(컨텐츠에 알맞게)-->
</head>
<body>

<form method="post" id="formList" name="formList" action="/infra/xdmin/xdminView">

<input type="hidden" id="ifmmSeq" name="ifmmSeq">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	
	<%-- <input type="hidden" id="shIfcgDelNy" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>">
	
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>"> --%>
	<input type="hidden" id="ifmmGender" name="ifmmGender" value="<c:out value="${item.ifmmGender}"/>">


	<div class="container-fluid">
		<div class="row">
			<div class="col" style="margin-top: 10px;">

				<span class="aa" style="font-size: 3vh; font-weight: bold;">
					Aladin Project </span>





				<div style="float: right;">
					<select class="form-select" aria-label="Default select example">
						<option selected>언어</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>




				</div>


				<span class="dropdown d-none d-sm-block"
					style="float: right; margin-right: 15px;"> <a href="#"
					class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
					id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png" alt="" width="32"
						height="32" class="rounded-circle me-2"> <strong>Manager</strong>
				</a>

					<ul class="dropdown-menu text-small shadow"
						aria-labelledby="dropdownUser2">
					
					
						<li><a class="dropdown-item" id="Logout" href="#">로그아웃</a></li>
					</ul>
				</span>

			</div>

		</div>

	</div>

	<br>
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd;">
		<div class="container-fluid">
			<!-- <a class="navbar-brand" href="#">Navbar</a> -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav" style="margin-left:30px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/infra/xdmin/xdminList">관리 페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="/infra/xdmin/xdminList" style="margin-left:10px;">회원 페이지</a>
					</li>
				<!-- 	<li class="nav-item"><a class="nav-link" href="/infra/book/bookList" style="margin-left:10px;">책 리스트</a>
					</li> -->
					<!-- <li class="nav-item"><a class="nav-link" href="/infra/book/bookRegister" style="margin-left:10px;">책 등록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/infra/book/bookPayment" style="margin-left:10px;">결제 페이지</a>
					</li> -->
				</ul>

			</div>
		</div>
	</nav>
	<main>

		<div class="flex-shrink-0 p-3 bg-white d-none d-sm-block"
			style="width: 280px;">
			<a href="/"
				class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi me-2" width="30" height="24">
					<use xlink:href="#bootstrap" /></svg> <span class="fs-5 fw-semibold">Collapsible</span>
			</a>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="true">Home</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">1</a></li>
							<li><a href="#" class="link-dark rounded">Updates</a></li>
							<li><a href="#" class="link-dark rounded">Reports</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
						aria-expanded="false">책 페이지</button>
					<div class="collapse" id="dashboard-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">책</a></li>
							<li><a href="#" class="link-dark rounded">책 등록</a></li>
							<li><a href="#" class="link-dark rounded">책 리스트</a></li>
							<li><a href="#" class="link-dark rounded">Annually</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#orders-collapse"
						aria-expanded="false">Orders</button>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">New</a></li>
							<li><a href="#" class="link-dark rounded">Processed</a></li>
							<li><a href="#" class="link-dark rounded">Shipped</a></li>
							<li><a href="#" class="link-dark rounded">Returned</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">Account</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">New...</a></li>
							<li><a href="#" class="link-dark rounded">Profile</a></li>
							<li><a href="#" class="link-dark rounded">Settings</a></li>
							<li><a href="#" class="link-dark rounded">Sign out</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>


	

		<!--   <input type ="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>"> -->
		<div class="container-fluid" style="margin: 10px; padding: 20px;">
	
			<div class="row" style="border-top: 1px solid;">
				<div class="col-3">
					<p>이름</p>
				</div>
				<div class="col-9">
					<p><c:out value="${item.ifmmName}"/></p>
				</div>
				<div class="col-3">

					<p>아이디</p>
				</div>
				<div class="col-9">
					<p><c:out value="${item.ifmmId}"/></p>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
					<p>생년월일</p>
				</div>
				<div class="col-9">
				
				<p><c:out value="${item.ifmmDob}"/></p>
				
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>성별</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifmmGender}"/></p>
				</div>

			</div>
			
			<div class="row">
				<div class="col-3">
				<p>국적</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifnaName}"/></p>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>주소</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifmaAddressFull}"/></p>
				</div>

			</div>
			
			<div class="row">
				<div class="col-3">
				<p>휴대폰 번호</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifmpPhone}"/></p>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>이메일</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifmeEmailFull}"/></p>
				</div>

			</div>
			
				
				<div class="row">
				<div class="col-3">
				<p>비밀번호 문제</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifjqQuestionName}"/></p>
				</div>

			</div>
			
				<div class="row">
				<div class="col-3">
				<p>비밀번호 답</p>
				</div>
				
				<div class="col-9">
				<p><c:out value="${item.ifjqAnswer}"/></p>
				</div>

			</div>
			<br>
			
			<div class="row" style="border-top:1px solid">
				<div class="col-3">
				<p>개인 정보 제공 동의 여부</p>
				</div>
				
				<div class="col-3">
				<p>푸쉬 알림 동의 여부</p>
				</div>
				
				<div class="col-3">
				<p>이메일 수신 동의 여부</p>
				</div>
				
				<div class="col-3">
				<p>휴대폰 수신 동의 여부</p>
				</div>

			</div>
			
				<div class="row">
				<div class="col-3" style="background-color:white; ">
				
				<p>
				<%-- <c:out value="${item.ifmmPushConsentNy}"/> --%>O
				</p>
				
				</div>
				
				<div class="col-3" style="background-color:white;">
				
				<p>
				<c:out value="${item.ifmmPushConsentNy}"/>
				</p>
				
				</div>
				
				<div class="col-3" style="background-color:white;">
				<p>
				<c:out value="${item.ifmmEmailConsentNy}"/>
				</p>
				</div>
				
				<div class="col-3" style="background-color:white;">
				<p>
				<c:out value="${item.ifmmSmsConsentNy}"/>
				</p>
				</div>

			</div>
			
			
<a style="float: left; padding: 5px; margin-right:5px;" class="btn btn-primary"
				id="formback" href="javascript:goList(<c:out value="${item.ifmmSeq}"/>);">
				
				취소
			</a>
		

	<a style="float: right; padding: 5px;" class="btn btn-danger"
				id="delete" href="/infra/xdmin/userListDele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
				
				삭제
			</a>
			<a style="float: right; padding: 5px; margin-right:5px;" class="btn btn-warning"
				id="formEdit" href="javascript:goEdit(<c:out value="${item.ifmmSeq}"/>);">
				
				수정
			</a>
			
		</div>







	
</form>


	</main>
	


</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/vaildation.js"></script>
<script type="text/javascript">

$("#delete").on("click" , function(){
	var answer = confirm("삭제 하시겠습니까?");
	
	if(answer){
		
	}else{
		return false;
	}
});

goEdit = function(seq){
	
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/xdmin/xdminEdit");
	$("#formList").submit();

}
goForm = function(seq){
	
	$("#ifmmSeq").val(seq);
	
	$("#formList").attr("action","/infra/xdmin/xdminForm");
	$("#formList").submit();

}
goView = function(seq){
	
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/xdmin/xdminView");
	$("#formList").submit();

}
goList = function(seq){
	
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/xdmin/xdminList");
	$("#formList").submit();

}
</script>

<script type="text/javascript">

$("#Logout").on("click" , function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/xdmin/logoutProc"
		,data : {}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/infra/member/loginForm";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	});
	
});
</script>
</html>

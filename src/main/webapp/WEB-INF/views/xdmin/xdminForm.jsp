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
label {
	margin-bottom: 15px;
}


</style>
<!-- <link href="sidebar2.css" rel="stylesheet"> -->
<link href="/infra/resources/css/sidebars.css" rel="stylesheet" type="text/css">
<title>회원 가입 페이지</title>
</head>
<!-- d-none d-sm-block -->
<body>

 

	<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
					</li>

				</ul>
			</div>
			
		</div>
	</nav>
	
	
 
<main>
  <div class="flex-shrink-0 p-3 bg-white d-none d-sm-block" style="width: 280px; ">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">Collapsible</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
          Home
        </button>
        <div class="collapse show" id="home-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">1</a></li>
            <li><a href="#" class="link-dark rounded">Updates</a></li>
            <li><a href="#" class="link-dark rounded">Reports</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          책 페이지
        </button>
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
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          Orders
        </button>
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
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          Account
        </button>
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
  
	
	<br>
	

	<div class="container-fluid">
		<div>
	
		<br>
		<div class="h2">&nbsp회원가입</div>
		<!-- <div style="float: right;">*항목은 필수입니다.</div> -->
	
	</div>
<br> 
		<div class="row">

			<div class="col-10 col-sm-6">
				<label for="id">&nbspID</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="id" name="id"
						placeholder="ID" aria-label="Recipient's username"
						aria-describedby="button-addon2" required>
					<button class="btn btn-outline-primary" type="button"
						id="button-addon2">중복확인</button>
				</div>
			</div>

		</div>


		<div class="row">
			<div class="col-6">
				<label for="pwd">비밀번호</label>
				<div class="input-group mb-3">

					<input type="password" class="form-control" id="pwd" name="pwd"
						placeholder="비밀번호" required>
				</div>
			</div>

			<div class="col-6">
				<label for="pwd_check">비밀번호 확인</label>
				<div class="input-group mb-3">

					<input type="password" class="form-control" id="pwd_check"
						name="pwd_check" placeholder="비밀번호 확인" required>
				</div>
			</div>

		</div>
		<div class="row">

			<div class="col-6">
				<label for="name">이름</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="name" name="name"
						required placeholder="이름">
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">이름(영문)</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="name_eng"
						name="name_eng"placeholder="이름(영문)">
				</div>

			</div>

		</div>


		<div class="row">
			<div class="col-6">
				<label for="gender">성별</label>
	<select class="form-select" id="gender" name="gender" aria-label="gender">
						<option selected>::선택::</option>
						<option value="1">남자</option>
						<option value="2">여자</option>
						<option value="3">기타</option>
					</select>
			</div>

	

		<div class="col-6">
			<label for="birthday">생일</label>
			<div class="input-group mb-3">
				<input type="date" class="form-control" id="birthday"
					name="brithday" required>
			</div>

		</div>
		
	</div>		
	
	<div class="row">
			<div class="col-6">
				<label for="gender">이메일</label>
	<input class="form-control" type="text" id="gender" name="gender" aria-label="gender" placeholder="이메일">
						
			</div>

	

		<div class="col-6">
			<label for="birthday">이메일 정보 마케팅 사용 동의</label>
			<div class="input-group mb-3">
				<input type="radio" class="btn-check" name="emailagree" id="emailagree" value="동의" checked>
			
			<label class="btn btn-outline-success" for="emailagree">동의</label>
				<input type="radio" name="emailagree" class="btn-check" id="emaildisagree" value="미동의">
				<label class="btn btn-outline-danger" for="emaildisagree">미동의</label>
			</div>

		</div>
		
	</div>		
	
	<div class="row">
			<div class="col-6">
				<label for="gender">핸드폰</label>
	<input class="form-control" type="text" id="gender" name="gender" aria-label="gender" placeholder="핸드폰">
						
			</div>

	

		<div class="col-6">
			<label for="birthday">핸드폰 정보 마케팅 사용 동의</label>
			<div class="input-group mb-3">
				<input type="radio" class="btn-check" name="phoneagree" id="phoneagree" value="동의" checked>
			
			<label class="btn btn-outline-success" for="phoneagree">동의</label>
				<input type="radio" name="phoneagree" class="btn-check" id="phonedisagree" value="미동의">
				<label class="btn btn-outline-danger" for="phonedisagree">미동의</label>
			</div>

		</div>
		
	</div>		
	
	<div class="row">

			<div class="col-6">
				<label for="name">전화번호</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="name" name="name"
						required placeholder="전화번호">
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">팩스번호</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="name_eng"
						name="name_eng" placeholder="팩스번호" required>
				</div>

			</div>

		</div>
		
		<div class="row">

			<div class="col-6">
				<label for="name">거주국가</label>
				<div class="input-group mb-3">

					<select class="form-select" id="gender" name="gender" aria-label="gender">
						<option selected>::선택::</option>
						<option value="1">남자</option>
						<option value="2">여자</option>
						<option value="3">기타</option>
					</select>
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">Datalist Example</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="name_eng"
						name="name_eng" required>
				</div>

			</div>

		</div>
		
		<div class="row">
		<div class="col-6">
		<label for="">주소</label>
		 <div class="input-group mb-3">
		 
        
        <input v-model="address.address1"
               type="text" class="form-control" placeholder="주소">
        <div class="input-group-append">
            <button @click="clickOpenAddressModal" class="btn btn-outline-secondary" type="button">주소검색</button>
            
            
        </div>
    </div>

    <div class="input-group mb-3">
        <input v-model="address.address2" type="text" class="form-control" placeholder="상세주소">
    </div>
		
		</div>
			<div class="col-6">
				<label for="desc">설명</label>
				<div class="input-group mb-3">
					<textarea class="form-control"id="desc" rows="4"></textarea>
				</div>

			</div>
		
		
	</div>
	<br>
	
	<div id="wrap">
	
	
	
	<div class="row">
	<div class="col-6 col-sm-3">
	<label for="">최종수정자</label>
	<input type="text" class="form-control" id="" name="" readonly>
	
	
	
	</div>
	
	<div class="col-6 col-sm-3">
	<label for="">최초수정일</label>
	<input type="text" class="form-control" id="" name="" readonly>
	
	
	
	</div>
	
	<div class="col-6 col-sm-3">
	<label for="">최초등록자</label>
	<input type="text" class="form-control" id="" name="" readonly>
	
	
	
	</div>
	
	<div class="col-6 col-sm-3">
	<label for="">최초등록일</label>
	<input type="text" class="form-control" id="" name="" readonly>
	
	
	
	</div>
	
	
	</div>
	<br>
	<div style="float:right;">
	<button  class="btn btn-primary">등록</button>
	</div>
	
	</div>
	
	
	</div>

</main>
   


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>
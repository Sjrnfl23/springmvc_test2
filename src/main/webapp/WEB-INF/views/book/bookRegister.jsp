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
<title>책 등록 페이지</title>
</head>
<!-- d-none d-sm-block -->
<body>

 

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
					<li class="nav-item"><a class="nav-link" href="/infra/book/bookList" style="margin-left:10px;">책 리스트</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/infra/book/bookRegister" style="margin-left:10px;">책 등록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/infra/book/bookPayment" style="margin-left:10px;">결제 페이지</a>
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
		<div class="h2" style="text-align:center;">책 등록</div>
		<hr>
	
	</div>
<br> 
		<div class="row">

			<div class="col-11 col-sm-6">
				<label for="id">&nbsp책 이름</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="id" name="prjTitle"
						placeholder="책 이름" >
					
				</div>
			</div>
				<div class="col-11 col-sm-6">
				<label for="prjOriginalTitle">원제</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id=prjOriginalTitle" name="prjOriginalTitle"
						placeholder="원제" required>
				</div>
			</div>

		</div>


	
		<div class="row">

			<div class="col-11 col-sm-6">
				<label for="name">작가</label>
				
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="pjbaAuthorName" name="name"
						 placeholder="작가">
				


			</div>
			

		</div>
		
	<div class="col-11 col-sm-6" >
			
				<label for="pjbcName">옮긴이</label>
				
				<div class="input-group mb-3">
				
	<input  type="text"  class="form-control"  id="pjbcName" name="pjbcName" placeholder="옮긴이" >
	
				</div>	
					
			</div>
			
			</div>

		<div class="row">
		
		

	

		<div class="col-11 col-sm-6">
			<label for="birthday">출판사</label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" id="birthday"
					name="brithday" placeholder="출판사">
			</div>

		</div>
		
		<div class="col-11 col-sm-6">
				<label for="gender">이메일</label>
	<input class="form-control" type="text" id="gender" name="gender" aria-label="gender" placeholder="이메일">
						
			</div>
			
	</div>		
	
	<div class="row" style="margin-top:6px; margin-bottom:6px;">
			
		<div class="col-6">
				<label for="Price">가격</label>
	<input class="form-control" type="text" id="Price" name="Price	" aria-label="gender" placeholder="가격">
					</div>		
							<div class="col-6">
							
				<label for="page">페이지수</label>
	<input class="form-control" type="text" id="page" name="page" aria-label="gender" placeholder="핸드폰">	
			</div>

	

		
		

		
	</div>		
	
	<div class="row">

			<div class="col-11 col-sm-6">
				<label for="name">ISBN</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="name" name="name"
						required placeholder="ISBN">
				</div>


			</div>
			<div class="col-11 col-sm-6">
				<label for="photo">사진 첨부</label>
				<input type="file" class="form-control" id="photo" name="photo">
				
			</div>

		</div>
		
		<div class="row" style="margin-top:15px;">
		
		<div class="col-11 col-sm-6">
		
		<label for="index">목차</label>
		<input type="text" class="form-control" id="index" name="index" placeholder="1초반 2중반 3후반 4결말">
		
		</div>
		
		
		</div>
		
		<br>
		<div class="col-11 col-sm-6">
		<label for="bookIntroduce">책소개</label>
		<textarea class="form-control" id="bookIntroduce" name="bookIntroduce" placeholder="0/80">
		
		</textarea>
		</div>
		
		
		
		
		<div class="col-11 col-sm-6" style="margin-top:15px;">
		<label for="authorIntroduce">저자소개</label>
		<textarea class="form-control" id="authorIntroduce" name="authorIntroduce" placeholder="0/80">
		
		</textarea>
		
</div>
	<br>
	
	
	<input type="submit" style="float:right;" class="btn btn-primary" value="등록">
	
	
	</div>
	
	
	

</main>
    <script src="../sidebars.js" type="text/javascript"></script>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>
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

a{
text-decoration:none;

}

    @media screen and (max-width: 576px){
    

	.table-responsive-sm{
		width:100%;
	}



 }

</style>
<!-- <link href="sidebars.css" rel="stylesheet"> -->
<title>회원 관리 페이지</title>
<!-- margin 오른쪽,회원 리스트 td창 작게(컨텐츠에 알맞게)-->
</head>
<body>
 
   
 
	<div class="container-fluid">
		<div class="row">
			<div class="col" style="margin-top:10px;">
			
				<span class="aa" style="font-size: 3vh; font-weight:bold;">
					Aladin Project
						
					</span>
				
					
				
			
			
				<div style="float:right;" >
					<select class="form-select" aria-label="Default select example">
						<option selected>언어</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
				
		
   		
				
				</div>
				
				
 <span class="dropdown d-none d-sm-block" style="float:right; margin-right:15px;">
      <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong>Manager</strong>
      </a>
      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
        <li><a class="dropdown-item" href="#">New project...</a></li>
        <li><a class="dropdown-item" href="#">Settings</a></li>
        <li><a class="dropdown-item" href="#">Profile</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Sign out</a></li>
      </ul>
    </span>

			</div>
			
		</div>

	</div>

	<br>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
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
	<br>
	<p class="margin">Code</p>
	<form action="" method="get" id="" name="" enctype="">
		<div class="container-fluid"
			style="border: 1px solid gray; margin: 20px; padding: 30px;">
			<!-- 마진이 왼쪽만 적용됨(??) -->
			<div class="row">
				<div class="col-md-2 col-6">
					<select class="form-select" aria-label="Default select example">
						<option selected>삭제여부</option>
						<option value="1">Y</option>
						<option value="2">N</option>
						
					</select>
				</div>
				<div class="col-md-2 col-6">
					<select class="form-select" aria-label="Default select example">
						<option selected>날짜</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">Three</option>
					</select>
				</div>
				
				<div class="col-md-2 col-6">
					<input type="text" class="form-control" id="firstdate"
						name="firstdate" placeholder="시작일">
				</div>	
				~
				<div class="col-md-2 col-6">
			
					<input type="text" class="form-control" id="firstdate"
						name="firstdate" placeholder="종료일">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-2 col-6">
					<select class="form-select" aria-label="Default select example">
						<option selected>검색구분</option>
						<option value="1">이름</option>
						<option value="2">ID</option>
						<option value="3">국적</option>
					</select>
				</div>

				<div class="col-md-2 col-6">
					<input type="text" class="form-control" id="firstdate"
						name="firstdate" placeholder="검색어">

				</div>
				<div style="margin:3px;" class="col">
					<button style="padding: 5px;" class="btn btn-warning " id="delete"
						name="delete">검색
						
					</button>
					<button style="margin:3px ;padding: 5px;" class="btn btn-danger " id="delete"
						name="delete">초기화
						
					</button>
				</div>

			</div>

		</div>
		
	
			<div style="float:right;">
			<select class="form-select" style="width: 100px; float: right;"
				aria-label="Default select example">
				<option selected>10</option>
				<option value="1">20</option>
				<option value="2">30</option>
				<option value="3">40</option>
			</select>
		</div>
<div class="table-responsive-sm">
		<table border="1" class="table caption-top table-bordered table-striped margin">
		  <caption>Total: 12,356</caption>
		   <colgroup>
		  <col style="width:2%">
		  </colgroup> 
		  	<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
		
	</c:when>
	<c:otherwise>
	
			<thead class="table-dark">
			
				<tr>
					<th><input type="checkbox" id="" name=""
						class="form-check-input"></th>
					
					<th>#</th>
					<th>Name</th>
					<th>Age</th>
					<th>Country</th>
					<th>Gender</th>
					<th>Phone</th>
					<th>Email</th>
					<th>InfoAgree</th>
				</tr>
			</thead>
			
			
			
			
		
		
		
	
		<c:forEach items="${list}" var="item" varStatus="status">
	
		<tr>
		
		
				<td><input type="checkbox" id="" name=""
					class="form-check-input"></td>
				<td><c:out value="${item.ifmmSeq}"/></td>
				<td><a href="/infra/xdmin/xdminView?ifmmSeq=<c:out value="${item.ifmmSeq}"/>&thisPage=${vo.thisPage}<%-- &shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/> --%>"><c:out value="${item.ifmmName}"/></a></td>
				<td><c:out value="${item.ifmmDob}"/></td>
				<td><c:out value="${item.ifnaName}"/></td>
				<td><c:out value="${item.ifmmGender}"/></td>
				<td><c:out value="${item.ifmpPhone}"/></td>
				<td><c:out value="${item.ifmeEmailFull}"/></td>
				<td><c:out value="${item.ifmmPushConsentNy}"/></td>
				
				</tr>
				
</c:forEach>
		
		</c:otherwise>
		
		</c:choose>	
		 
			
		

		
		</table>
	</div>
	<br>
	<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
  
   <c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="/infra/xdmin/xdminList?thisPage=${vo.startPage - 1}">Previous</a></li>
</c:if>

<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="/infra/xdmin/xdminList?thisPage=${i.index}">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/infra/xdmin/xdminList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>   
  
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="/infra/xdmin/xdminList?thisPage=${vo.endPage + 1}">Next</a></li>
</c:if>
  
  </ul>
  
</nav>

		
		<div class="margin">
			<a style="float: left; padding: 5px;" class="btn btn-success"
				id="insert" href="xdminForm">
				
				등록
			</a>
			<a style="float: right; padding: 5px;" class="btn btn-danger "
				id="delete" href="#">
				
				삭제
			</a>

			<a style="float: right; padding: 5px; margin-right: 5px;"
				class="btn btn-success" id="edit" href="#">
				수정
			</a>
			
			<!-- <input type="button" style="float:left" class="btn-danger" id="delete" name="delete"> -->
		</div>
		<br>
		<br> <br> <br>
		<div style="background-color: #F8F9FA; margin: 10px; height: 200px; "
			class="text">
			<div>
			<br>
			<br>
			<br>
				<p style="margin: auto; margin-bottom:3px;">(주)xx컴퍼니 서울시 xx구 yy로 352-3 하이젠빌딩</p>
				<p style="margin: auto;">Copyright 2014,index Inc. all rights
					reserved</p>
			</div>
		</div>

		<hr>
	</form>
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

<script src="/infra/resources/js/vaildation.js"></script>




	
</body>


</html>
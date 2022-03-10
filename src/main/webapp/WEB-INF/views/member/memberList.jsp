<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport content=width=dievice-width,initial-scale=1.0">
<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align:center;
}

th, td {
	padding: 10px;
}
</style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<h1>회원리스트</h1>
<!-- <a href="../../index.html">메인페이지</a> -->
<hr> 
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            정렬순
          </a>	
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">이름순</a></li>
            <li><a class="dropdown-item" href="#">나이순</a></li>
           
            <li><a class="dropdown-item" href="#">번호순</a></li>
          </ul>
        </li>
       
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<br>

	<table border="1"  class="table table-striped table-hover">
	<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
			
		
		
		
		<tr>
			<th class="table-primary">No.</th>
			<th class="table-light">이름</th>
			<th class="table-info">아이디</th>
			<th class="table-secondary">전화번호</th>
			<th>성별</th>
			<th>이메일</th>
		</tr>
		<c:forEach items="${list}" var="item" varStatus="status">
		<tr>
			<td>${item.ifmmSeq}</td>
			<td><a href="/infra/member/memberView?ifmmSeq=<c:out value="${item.ifmmSeq}"/>"><c:out value="${item.ifmmName}"/></a></td>
			<td><c:out value="${item.ifmmId}"/></td>
			<td><c:out value="${item.ifmmPhone}"/></td>
			<td><c:out value="${item.ifmmGender}"/></td>
			<td><c:out value="${item.ifmeEmailFull}"/></td>
		</tr>
		
		
		</c:forEach>
		
		</c:otherwise>
		</c:choose>	 
	</table>
	<form action="./memberForm" method="post" id="form" name="form">
	<br>
	<input class="btn btn-primary" style="margin:auto; display:block" type="submit" value="등록">
	</form>
	
	<br>
	<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>


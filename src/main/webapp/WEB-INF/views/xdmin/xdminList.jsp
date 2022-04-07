<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>
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
					<!-- <select class="form-select" aria-label="Default select example">
						<option selected>언어</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select> -->
				
		
   		
				
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
				 	<li class="nav-item"><a class="nav-link" href="/infra/book/bookList" style="margin-left:10px;">책 리스트</a>
					</li> 
					<!-- <li class="nav-item"><a class="nav-link" href="/infra/book/bookRegister" style="margin-left:10px;">책 등록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/infra/book/bookPayment" style="margin-left:10px;">결제 페이지</a>
					</li>  -->
				</ul>

			</div>
		</div>
	</nav>
	<br>
	
	<form action="/infra/xdmin/xdminList" method="post" id="formList" name="formList" >
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="checkboxSeqArray">
	
	
	
	<%-- <input type="hidden" id="shIfcgDelNy" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>"> --%>

<%-- 	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>"> --%>
	
		<div class="container-fluid"
			style="border: 1px solid gray; margin: 20px; padding: 30px;">
			<!-- 마진이 왼쪽만 적용됨(??) -->
			<div class="row">
				<div class="col-md-2 col-6">
					<select class="form-select" aria-label="Default select example" id="shIfmmDelNy" name="shIfmmDelNy">
							<option value="2" selected>::삭제구분::
							<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }">selected</c:if>>Y
							<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }">selected</c:if>>N
						
					</select>
				</div>
				<div class="col-md-2 col-6">
					<select class="form-select" aria-label="Default select example" id="shOptionDate" name="shOptionDate">
						<option value="1" selected >날짜</option>
						<option value="2">등록일</option>
						<option value="3">2</option>
						<option value="4">Three</option>
					</select>
				</div>
				
				<div class="col-md-2 col-6">
				<%-- <fmt:parseDate var="shDateStart" value="${vo.shDateStart }" pattern="yyyy-MM-dd HH:mm:ss"/>
            <input type="date" id="shDateStart" name="shDateStart" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd"/>" placeholder="시작일" class="form-control form-control-sm" autocomplete="off"> --%>
					 <input type="date" class="form-control" id="shDateStart" name="shDateStart" value="<c:out value="${vo.shDateStart}"/>"> 
				</div>	
				~
				<div class="col-md-2 col-6">
			
					<input type="date" class="form-control" id="shDateEnd" name="shDateEnd" value="<c:out value="${vo.shDateEnd}"/>">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-2 col-6">
					<select class="form-select" id="shOption" name="shOption"aria-label="Default select example">
						<option value="0" selected>검색구분</option>
						<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>이름</option>
						<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>ID</option>
						<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>국적</option>
					</select>
				</div>

				<div class="col-md-2 col-6">
					<input type="text" class="form-control" id="shValue"
						name="shValue" placeholder="검색어" value="<c:out value="${vo.shValue}"/>">

				</div>
				<div style="margin:3px;" class="col">
				
					<input type="submit" style="padding: 5px;" class="btn btn-warning " id="btnSearch"
						name="btnSearch" value="검색">
						
					
					 <button style="margin:3px ;padding: 5px;" class="btn btn-danger " id="btnReturn"
						name="btnReturn">초기화
						
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
		  	
		  	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2') }"/>
		  	<c:choose>
		  	
		  	
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
		
	</c:when>
	<c:otherwise>
	
			<thead class="table-dark">
			
				<tr>
					<th><input type="checkbox" id="checkboxAll" name="checkboxAll"
						class="form-check-input"></th>
					
					<th>#</th>
					<th>Name</th>
					<th>Age</th>
					<th>Country</th>
					<th>Gender</th>
					<th>Phone</th>
					<th>Email</th>
					<th>RegisterDate</th>
				</tr>
				
			</thead>
			
			
			
			
		
		
		
	
		<c:forEach items="${list}" var="item" varStatus="status">
	
		<tr>
		
		
				<td><input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq}"/>"  
					class="form-check-input"></td>
				<td><c:out value="${item.ifmmSeq}"/></td>
				<td><a href="javascript:goView(<c:out value="${item.ifmmSeq}"/>);"><c:out value="${item.ifmmName}"/></a></td>
				<td><c:out value="${item.ifmmDob}"/></td>
				<td><c:out value="${item.ifnaName}"/></td>
				<td>
				  <c:out value="${item.ifmmGender}"/> 
		 <%-- <c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
			
			<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}"><c:out value="${itemGender.ifcdName}"/></c:if>
			
		</c:forEach>  --%>
						
				</td>
				
				<td>
				<c:out value="${item.ifmpPhone}"/>
				<%-- <c:set var="numberPhone" value="${item.ifmpPhone}"/>
                	<c:choose>
                		<c:when test="${fn:length(numberPhone) eq 10 }">
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,6)}"/>
							- <c:out value="${fn:substring(numberPhone,6,10)}"/>
                		</c:when>
                		<c:otherwise>
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,7)}"/>
							- <c:out value="${fn:substring(numberPhone,7,11)}"/>
                		</c:otherwise>
               		</c:choose> --%>
				  </td>
				
				<td><c:out value="${item.ifmeEmailFull}"/></td>
				<%-- <td><c:out value="${item.ifmmPushConsentNy}"/></td> --%>
				<td><c:out value="${item.regDateTime}"/></td>
				</tr>
				
</c:forEach>
		
		</c:otherwise>
		
		</c:choose>	
		 
			
		

		
		</table>
	</div>
	<br>
	<%-- <nav aria-label="Page navigation example">
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
  
</nav> --%>

<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">

			<c:if test="${vo.startPage gt vo.pageNumToShow}">
				<li class="page-item"><a class="page-link"
					href="javascript:goList(<c:out value="${vo.startPage - 1}"/>);">Previous</a></li>
			</c:if>

			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">

				<c:choose>
					<c:when test="${i.index eq vo.thisPage}"> 
						<li class="page-item active"><a class="page-link"
							href="javascript:goList(<c:out value="${i.index}"/>);">${i.index}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="javascript:goList(<c:out value="${i.index}"/>);">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${vo.endPage ne vo.totalPages}">
				<li class="page-item"><a class="page-link"
					href="javascript:goList(<c:out value="${vo.endPage+1}"/>);">Next</a></li>
			</c:if>

		</ul>
	</nav>

		
		<div class="margin">
			<a style="float: left; padding: 5px;" class="btn btn-success"
				id="insert" href="xdminForm">
				
				등록
			</a>
			<input type="submit" style="float: right; padding: 5px;" class="btn btn-danger "
				id="btnModalDelete" name="btnModalDelete" value="삭제">
				
				
			

			<a style="float: right; padding: 5px; margin-right: 5px;"
				class="btn btn-success" id="edit" href="#">
				수정
			</a>
			
			<!-- <input type="button" style="float:left" class="btn-danger" id="delete" name="delete"> -->
		</div>
		<br>
		<br> <br> <br>
		<div style="background-color: #F8F9FA; margin: 10px; height: 200px;"
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

<script src="/infra/resources/js/vaildation.js"></script>

<script type="text/javascript">

var checkboxSeqArray = [];

$("#btnSave").on("click",function(){
	if(seq.val() == "0"){
	
		if(vaildationInst()==false) return false;
		setCheckboxValue($("ifmmEmailConsent"),$("#ifmmEmailConsentNy"));
		setCheckboxValue($("#ifmmSmsConsent"),$("#ifmmSmsConsentNy"));
		form.attr("action",goUrlInst).submit();
	
	}else{
		//update
		if(vaildationUpdt()==false) return false;
		form.attr("action",goUrlUpdt).submit();
	
	}
	
	
	
});

setCheckboxValue = function(obj,targetObj){
	if(ong.is(":checked")){
		targetObj.val("1");
	}else{
		targetObj.val("0");
	}
}


goList = function(seq){
	
	//form 객체 가져온후 전달
	$("#thisPage").val(seq);
	$("#formList").submit();
	
}
goView = function(seq){
	
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/xdmin/xdminView");
	$("#formList").submit();

}

$("#checkboxAll").click(function(){
	if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked",true);
	else $("input[name=checkboxSeq]").prop("checked",false);
});

$("#btnModalDelete").on("click",function(){
	
	
	$("input[name=checkboxSeq]:checked").each(function() { 
		checkboxSeqArray.push($(this).val());
		/* $("[name=checkboxSeqArray]").push($(this).val()); */
	});

	$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
						
	/* $("#formList").attr("action", "infra/xdmin/userLisrDele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>").submit(); */
	/* $("#formList").attr("action",goUrlMultiDele); */
	$("#formList").attr("action" , "/infra/xdmin/userListDele");
});

/* $("#btnCheck").on("click" , function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/member/loginProc"
		,data : {"ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/infra/index/indexView";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	});
	
}); */

$("#btnReturn").on("click",function(){
	
	
	$("#shValue").val("");  
	return true;
	/* $(location).attr("href", "/infra/xdmin/xdminList"); */
	
	

	
});

$("#btnSearch").on("click",function(){
	if($("#shOption").val() == 0){
		alert("검색구분을 선택해주세요");
		return false;
	}
	
});

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

	
</body>


</html>
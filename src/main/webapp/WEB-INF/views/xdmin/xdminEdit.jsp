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
.ui-datepicker{ z-index: 9999 !important;}
@media screen and (max-width: 576px) {
	.table-responsive-sm {
		width: 100%;
	}
}
</style>
<link href="/infra/resources/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<title>회원 관리 페이지</title>
<!-- margin 오른쪽,회원 리스트 td창 작게(컨텐츠에 알맞게)-->
</head>
<body>

<form id="formList" method="post" action="/infra/xdmin/xdminUpdate">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">

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
					<p><input type="text" id="ifmmName" name="ifmmName" class="form-control" value="<c:out value="${item.ifmmName}"/>"></p>
				</div>
				<div class="col-3">

					<p>아이디</p>
				</div>
				<div class="col-9">
					<p><input type="text" id="ifmmId" name="ifmmId" class="form-control" value="<c:out value="${item.ifmmId}"/>"></p>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
					<p>생년월일</p>
				</div>
				<div class="col-9">
				
				<p>
				
				<%-- <input type="date"  class="form-control" id="ifmmDob" name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>"></p> --%>
				<input type="text" id ="abcDate" name="ifmmDob" autocomplete="off" value="<c:out value="${item.ifmmDob}"/>">
				
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>성별</p>
				</div>
				
				<div class="col-9">
				 
				<select class="form-select" id="ifmmGenderCd" name="ifmmGenderCd" aria-label="gender">
						
						<option value="5" <c:if test="${item.ifmmGender eq '남성'}">selected</c:if> >남성</option>
						<option value="4" <c:if test="${item.ifmmGender eq '여성'}">selected</c:if> >여성</option>
						<option value="6" <c:if test="${item.ifmmGender eq '기타'}">selected</c:if> >기타</option>
					</select>
				</div>

			</div>
			
			<div class="row">
				<div class="col-3">
				<p>국적</p>
				</div>
				
				<div class="col-9">
				<select class="form-select" id="ifnaSeq" name="ifnaSeq" aria-label="gender">
						
						<option value="3"<c:if test="${item.ifnaName eq '대한민국'}">selected</c:if>>대한민국</option>
						<option value="2" <c:if test="${item.ifnaName eq '미국'}">selected</c:if> >미국</option>
						<option value="4" <c:if test="${item.ifnaName eq '일본'}">selected</c:if>>일본</option>
					</select>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>주소</p>
				</div>
				
				<div class="col-9">
				 <div class="input-group mb-3">
		 
        
        <input 
               type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1" placeholder="주소" value="<c:out value="${item.ifmaAddress1}"/>">
        <div class="input-group-append">
            <button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
            
            
        </div>
    </div>

    <div class="input-group mb-3">
        <input  type="text" class="form-control" placeholder="상세주소" id="ifmaAddress2" name="ifmaAddress2" value="<c:out value="${item.ifmaAddress2}"/>" >
    </div>
				
				<%-- <p><input type="text"  class="form-control" value="<c:out value="${item.ifmaAddress1}"/>"></p>
				<p><input type="text"  class="form-control" value="<c:out value="${item.ifmaAddress2}"/>"></p> --%>
				</div>

			</div>
			
			<div class="row">
				<div class="col-3">
				<p>휴대폰 번호</p>
				</div>
				
				<div class="col-9">
				<div class="input-group mb-3">
					<select id="ifmpTelcomCd">
			<option value="30">KT
			<option value="29">SKT
			<option value="31">LGU+
				</select>
				<input type="text"  class="form-control" name="ifmpPhone" id="ifmpPhone" value="<c:out value="${item.ifmpPhone}"/>">
				</div>
				</div>

			</div>
			<div class="row">
				<div class="col-3">
				<p>이메일</p>
				</div>
				
				<div class="col-9">
				<p><input type="text"  id="ifmeEmailFull" name="ifmeEmailFull" class="form-control" value="<c:out value="${item.ifmeEmailFull}"/>"></p>
				</div>

			</div>
			
				
				<div class="row">
				<div class="col-3">
				<p>비밀번호 문제</p>
				</div>
				
				<div class="col-9">
				<select class="form-select form-select-lg mb-3" id="ifjqQuestionCd" name="ifjqQuestionCd">
  		<option selected> ::비밀번호 문제 선택::</option>
  		<option value="48"<c:if test="${item.ifjqQuestionCd eq 48}">selected</c:if> >나만의 추억의 장소는?</option>
  		<option value="49"<c:if test="${item.ifjqQuestionCd eq 49}">selected</c:if>>내가 나온 초등학교의 이름은?</option>
  		
			</select>
			
				</div>

			</div>
			
				<div class="row">
				<div class="col-3">
				<p>비밀번호 답</p>
				</div>
				
				<div class="col-9">
				<p><input type="text"  class="form-control"  name="ifjqAnswer" value="<c:out value="${item.ifjqAnswer}"/>"></p>
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
			
			

	

	<a style="float: right; padding: 5px; margin-left:5px;" class="btn btn-danger"
				id="goback" href="javascript:goView(<c:out value="${item.ifmmSeq}"/>);">
				
				취소
			</a>
			<input type="submit" style="float: right; padding: 5px; " class="btn btn-warning" 
				id="edit" value="수정">
				
				
			
			
		</div>







	



	</main>
	
</form>

</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/vaildation.js"></script>
<script type="text/javascript">

/* $("#delete").on("click" , function(){
	var answer = confirm("삭제 하시겠습니까?");
	
	if(answer){
		
	}else{
		return false;
	}
}); */

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
</script>

<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>



<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
               
                document.getElementById("ifmaAddress1").value = roadAddr;
                
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
              

              /*   
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                } */
            }
        }).open();
    }
</script>

<script type="text/javascript"> //jquery 달력
 
	$(document).ready(function(){
		 $("#abcDate").datepicker();
	}); 

	$.datepicker.setDefaults({
		
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년',
	    
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
</html>

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
.ui-datepicker{ z-index: 9999 !important;}



</style>
<!-- <link href="sidebar2.css" rel="stylesheet"> -->
<link href="/infra/resources/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<title>회원 가입 페이지</title>
</head>
<!-- d-none d-sm-block -->
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
	
<form action="xdminInst" id="formList" name="" method="get">
<input type="hidden" id="ifmmSeq" name="ifmmSeq">

		<div class="row">
		
	<div class="col-5">
		
		
		
		
		</div>
		<div class="col-7">
		<h2 style="margin-top:6px; margin-left:50px;">&nbsp회원가입</h2>
		</div>
	</div>
<br> 
		<div class="row">

			<div class="col-10 col-sm-6">
				<label for="ifmmId">&nbspID</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="ifmmId" name="ifmmId"
						placeholder="ID" aria-label="Recipient's username"
						aria-describedby="button-addon2" >
					<button class="btn btn-outline-primary" type="button"
						id="button-addon2">중복확인</button>
				</div>
			</div>

		</div>


		<div class="row">
			<div class="col-6">
				<label for="ifmmPassword">비밀번호</label>
				<div class="input-group mb-3">

					<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword"
						placeholder="비밀번호" >
				</div>
			</div>

			<div class="col-6">
				<label for="pwd_check">비밀번호 확인</label>
				<div class="input-group mb-3">

					<input type="password" class="form-control" id="pwd_check"
						name="pwd_check" placeholder="비밀번호 확인">
				</div>
			</div>

		</div>
		<div class="row">

			<div class="col-6">
				<label for="name">이름</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="ifmmName" name="ifmmName"
						placeholder="이름">
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">이름(영문)</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="ifmmNameEng"
						name="ifmmNameEng" placeholder="이름(영문)">
				</div>

			</div>

		</div>


		<div class="row">
			<div class="col-6">
				<label for="gender">성별</label>
	<select class="form-select" id="ifmmGenderCd" name="ifmmGenderCd" aria-label="gender">
						<option value="0" selected >::선택::</option>
						<option value="5">남자</option>
						<option value="4">여자</option>
						<option value="6">기타</option>
					</select>
			</div>

	

		<div class="col-6">
			<label for="birthday">생일</label>
			<div class="input-group mb-3">
				<!-- <input type="date" class="form-control" id="ifmmDob"
					name="ifmmDob" > -->
					<input type="text" class="from-control" id="abcDate" name="ifmmDob" autocomplete="off">
			</div>

		</div>
		
	</div>		
	
	<div class="row">
			<div class="col-6">
				<label for="ifmeEmailFull">이메일</label>
	<input class="form-control" type="text" id="ifmeEmailFull" name="ifmeEmailFull" aria-label="gender" placeholder="이메일">
						
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
		<label for="ifmpMobile">핸드폰</label>
			<div class="input-group mb-3">
			
				
				
				<select id="ifmpTelcomCd">
			<option value="30">KT
			<option value="29">SKT
			<option value="31">LGU+
				</select>
					
				
	<input class="form-control" list="company" type="text" id="ifmpMobile" name="ifmpMobile" aria-lebel="ifmpMobile" aria-describedby="ifmpTelcomCd" placeholder="핸드폰">
					
		</div>	
</div>
	

		<div class="col-6">
		
			<label for="birthday">핸드폰 정보 마케팅 사용 동의</label>
			<div class="input-group mb-3">
				<input type="radio" class="btn-check" name="ifmmSmsConsentNy" id="ifmmSmsConsentNy" value="1" checked>
			
			<label class="btn btn-outline-success" for="ifmmSmsConsentNy">동의</label>
				<input type="radio" name="ifmmSmsConsentNy" class="btn-check" id="ifmmSmsConsentN" value="0">
				<label class="btn btn-outline-danger" for="ifmmSmsConsentN">미동의</label>
				
				
				
			</div>
		
		</div>
		
		
					<!-- <label for="info">개인 정보 제공 동의</label>
					<div class="input-group mb-3">
			<input type="radio" class="btn-check" name="infoagree" id="infoagree" value="동의" checked>
			
			<label class="btn btn-outline-success" for="infoagree">동의</label>
				<input type="radio" name="phoneagree" class="btn-check" id="phonedisagree" value="미동의">
				<label class="btn btn-outline-danger" for="phonedisagree">미동의</label>
				</div> -->
				
				
	</div>		
	
	<div class="row">

			<div class="col-6">
				<label for="name">전화번호</label>
				<div class="input-group mb-3">

					<input type="text" class="form-control" id="ifmpPhone" name="ifmpPhone"
						 placeholder="전화번호">
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">팩스번호</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="ifmpFax"
						name="ifmpFax" placeholder="팩스번호">
				</div>

			</div>

		</div>
		
		<div class="row">

			<div class="col-6">
				<label for="name">국적</label>
				<div class="input-group mb-3">

					<select class="form-select" id="ifnaSeq" name="ifnaSeq" aria-label="gender">
						<option  value="0" selected>::선택::</option>
						<option value="3">대한민국</option>
						<option value="2">미국</option>
						<option value="4">일본</option>
					</select>
				</div>


			</div>
			<div class="col-6">
				<label for="name_eng">Datalist Example</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="name_eng"
						name="name_eng">
				</div>

			</div>

		</div>
		
		<div class="row">
		<div class="col-6">
		<label for="">주소</label>
		 <div class="input-group mb-3">
		 
        
        <input 
               type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1" placeholder="주소">
        <div class="input-group-append">
            <button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
            
            
        </div>
    </div>

    <div class="input-group mb-3">
        <input  type="text" class="form-control" placeholder="상세주소" id="ifmaAddress2" name="ifmaAddress2">
    </div>
		
		</div>
		 	<div class="col-6">
				<label for="desc">설명</label>
				<div class="input-group mb-3">
					<textarea class="form-control"id="desc" rows="4"></textarea>
				</div>

		
			</div> 
			
			<div class="col-6">
			<label for="desc">비밀번호 문제</label>
			<select class="form-select form-select-lg mb-3" id="ifmmQuestionCd" name="ifjqQuestionCd" aria-label=".form-select-lg example">
  		<option selected> ::비밀번호 문제 선택::</option>
  		<option value="48">나만의 추억의 장소는?</option>
  		<option value="49">내가 나온 초등학교의 이름은?</option>
  		
			</select>
				<label for="ifjqAnswer">비밀번호 답</label>
			<input type="text" class="form-control" id="ifjqAnswer" name="ifjqAnswer">
			</div>
			
			<div class="col-6">
		
			</div>
		<%--  <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmDesc" class="form-label">설명</label>
            <p>${fn:replace(item.ifmmDesc, br, '<br/>')}</p>
            <p><c:out value="${fn:replace(item.ifmmDesc, br, '<br/>')}" escapeXml = "false"/></p>
        </div> --%>
		
		
	</div>
	<br>
	
	<div id="wrap">
	
	<div class="col-6">
	<input type="text" class="form-control" id="ifmaLatArray0" placeholder="위도">
	
	</div>
<br>	
	<div class="col-6">
	
	<input type="text" class="form-control" id="ifmaLngArray0" placeholder="경도">
	</div>
	
	<!-- <div class="row">
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
	
	
	
	</div> -->
	
	
	</div>
	
	<br>
	<div style="float:right;">
	
	
	<input type="submit" id="btnSubmit" class="btn btn-primary" value="등록">
	

	
	</div>
	<div style="float:left">
	<a style="float:left;" class="btn btn-primary"
				id="formback" href="javascript:goList(<c:out value="${item.ifmmSeq}"/>);">
				
				취소
			</a>
	</div>
		</form>
	</div>
	
	
	</div>

</main>





	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		<script src="/infra/resources/js/vaildation.js"></script>
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9c7bdaddb04ecf6502f29e7660e0c8d8&libraries=services"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.

    var roadAddr;
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               roadAddr = data.roadAddress; // 도로명 주소 변수
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
        
        roadAddr = document.getElementById("ifmaAddress1");
        var geocoder = new daum.maps.services.Geocoder();

        // 주소로 좌표를 검색
        geocoder.addressSearch(roadAddr, function(result, status) {
         
        	// 정상적으로 검색이 완료됐으면,
        	if (status == daum.maps.services.Status.OK) {
        		
        		document.getElementById("ifmaLatArray0").value=result[0].x;
        		document.getElementById("ifmaLngArray0").value=result[0].y;
        		
         						
        		var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        		y = result[0].x;
        		x = result[0].y;

        		// 결과값으로 받은 위치를 마커로 표시합니다.
        		var marker = new daum.maps.Marker({
        			map: map,
        			position: coords
        		});

        		// 인포윈도우로 장소에 대한 설명표시
        		var infowindow = new daum.maps.InfoWindow({
        			content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
        		});

        		infowindow.open(map,marker);

        		// 지도 중심을 이동
        		map.setCenter(coords);
        		
        		document.getElementById("ifmaLatArray0").value=x;
        		document.getElementById("ifmaLngArray0").value=y;
        					
        	}
        });
    }
    // 주소-좌표 변환 객체를 생성
   
</script>
 
<script type="text/javascript">

goList = function(seq){
	
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/xdmin/xdminList");
	$("#formList").submit();

}


$("#btnSubmit").on("click",function(){
	
	
	if(!checkNull($("#ifmmId") , $("#ifmmId").val() , "Id를 입력해 주세요")){
		return false;
	}
	if(!checkNull($("#ifmmPassword") , $("#ifmmPassword").val() , "비밀번호를 입력해 주세요")){
		return false;
	}
	if(!checkNull($("#pwd_check") , $("#pwd_check").val() , "비밀번호 확인을 입력해 주세요")){
		return false;
	}
	
	 if(!checkPasswordSame($("#ifmmPassword"), $("#ifmmPassword").val() , $("#pwd_check").val() , "비밀번호가 서로 다릅니다")){
		return false;
	} 
	
	if(!checkNull($("#ifmmName") , $("#ifmmName").val() , "이름을 입력해 주세요")){
		return false;
	}

	

	if(!checkNull($("#abcDate") , $("#abcDate").val() , "생년월일을 입력해 주세요")){
		return false;
	}
	
	
	
	
	if( $("#ifmmGenderCd").val() == 0){
		alert("성별을 선택해 주세요");
		$("#ifmmGenderCd").focus();
		return false;
	}else{
		
	}
	
	if($("#ifnaSeq").val()== 0){
		alert("국적을 선택해 주세요");
		$("#ifnaSeq").focus();
		return false;
	}else{
		
	}
	

	
})

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

var idCheckNy=0;

$("#button-addon2").on("click" , function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/xdmin/idCheck"
		,data : {"ifmmId" : $("#ifmmId").val()}
		,success: function(response) {
			if(response.rt == "success") {
				alert("사용 가능한 아이디 입니다");
				idCheckNy=1;
				$("#btnSubmit").prop("disabled",false);
			} else {
				alert("중복된 아이디 입니다");
				
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	});
	
});

if(idCheckNy==0){
	$("#btnSubmit").prop("disabled",true);
}else{
	$("#btnSubmit").prop("disabled",false);
}

</script> 


</body>


</html>
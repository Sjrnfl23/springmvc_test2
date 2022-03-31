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
<link href="../styleSheets/sidebars.css" rel="stylesheet">
<link href="/infra/resources/css/sidebars.css" rel="stylesheet" type="text/css">
<title>책 결제 페이지</title>
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
			
<br> 
		<div class="row">
		
		<div class="col-">
			<strong>주문상품:<strong>로미오와 줄리엣</strong></strong>
			
</div>

<div class="col-" style="margin-left:5px;">
<div class="form-check">
<br>
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
  <label class="form-check-label" for="flexRadioDefault1">
    택배
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
    우체국택배
  </label>
  
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
    방문수령
  </label>
  
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
     편의점 방문
  </label>
  
</div>


 </div>
			
		
</div>

<div class="row">

</div>

	<hr>
		<div class="row">

			<div class="col-11 col-sm-6">
			
				<label for="name">주문인:</label>
				<strong>권순형(010-****-2351)</strong>
				<div class="input-group mb-3">
	
				


			</div>
			

		</div>
		
	

		<div class="row">
		
		<p>배송지 입력</p>
		
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="margin-top:6px; margin-bottom:6px;">
  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
  <label class="btn btn-outline-primary" for="btnradio1">최근 배송지</label>

  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio2">주문인정보</label>

  <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio3">새주소</label>
  
    
</div>
			
	</div>
	
	
	<div class="row" style="margin-top:6px; margin-bottom:6px;">
	
		<div class="col-11 col-sm-6">
		
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
	
	</div>		
	<hr>
	<div class="row" style="margin-top:6px; margin-bottom:6px;">
			
		<div class="col-11">
		
		<p>수령장소</p>
		
		<div class="form-check">
<br>
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
  <label class="form-check-label" for="flexRadioDefault1">
    문앞
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
    경비실
  </label>
  
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	기타
  </label>
  
  &nbsp<input type="text" style="width:60%;">
  
</div>


	
	
	</div>		
	</div>
	
	
	<hr>
	<div class="row" style="margin-top:6px; margin-bottom:6px;">
	
<div class="col-11">
<p>배송 메모 입력</p>

<input type="text" class="form-control" placeholder="조심히 와주세요">
<br>
<input type="checkbox" id="present" name="present"><label for="present">&nbsp선물 포장 상자(1,500원 추가)</label>
<br>



</div>
			
		
</div>
<hr>
<div class="row" style="margin-top:6px; margin-bottom:6px;">
<div class="col-11">
<p>&nbsp마일리지</p>

<label style="font-weight:bold;">마일리지:</label>
<div class="input-group mb-3">
		<label style="font-weight:bold;" for="id">사용할 마일리지: &nbsp</label>
					<input type="text" class="form-control" id="id" name="id"
						placeholder="최대 5000" aria-label="Recipient's username"
						aria-describedby="button-addon2"
						
						 required>
						 
						
					<button class="btn btn-outline-primary" type="button"
						id="button-addon2">전부사용</button>
						
				</div>


</div>

</div>


<hr>
<div class="row" style="margin-top:6px; margin-bottom:6px;">
<div class="col-11">


<p>상품 주문 총액:</p>
<p>할인 금액:</p>
<p>최종 결제 금액:</p>
</div>

</div>

<hr>
<div class="row" style="margin-top:6px; margin-bottom:6px;">
<div class="col-11">
<p>결제 방식</p>

</div>
<div class="col-6">
 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	카드 결제
  </label>

</div>
<div class="col-6">
 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	카카오 페이
  </label>

</div>
<div class="col-6">
 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	토스 결제
  </label>

</div>
<div class="col-6">
 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	무통장 입금
  </label>

</div>
<div class="col-6">
 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
   	휴대폰 결제
  </label>

</div>

</div>

<div class="row" style="margin-top:6px; margin-bottom:6px;">
<div class="col-11">

<select>
<option>국민카드
<option>신한카드
</select>
</div>

</div>
	<br>
	
	
	<button style="float:right;" class="btn btn-primary">등록</button>
	
	
	</div>
	
	</div>
	

	

</main>
    <script src="../sidebars.js" type="text/javascript"></script>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>

<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
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
                }
            }
        }).open();
    }
</script> -->

</html>
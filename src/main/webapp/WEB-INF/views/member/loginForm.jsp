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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>로그인</title>
    <style type="text/css">
   
    

    .tbstyle{
    
  width:600px;
   
    
   /*  border:solid 1px gray; */
    }
    
    div{
    margin:5px;
    padding:5px;
    }
    
     a{
  text-decoration:none;
  }
   button{
  height:45px;
  }
 
  
      @media screen and (max-width: 576px){
  .tbstyle{
  width:90%;
  /*  border:solid 1px gray; */
  } 



 }
    </style>
  </head>
  <body>

	<div class="container-fluid">
		<div class="row">
			<div class="col">
			
				<span style="font-size: 2.5vh; font-weight:bold; line-height:50PX;">
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
				
				
 <span class="dropdown d-none d-sm-block" style="float:right; margin-right:15px; margin-top:12px;">
      <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong>Manager</strong>
      </a>
      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
       
        <li><a class="dropdown-item" href="#">Sign out</a></li>
      </ul>
    </span>

			</div>
			
		</div>

	</div>
		<br>		
<img src="/infra/resources/images/aladinLogo.jpg" class="rounded mx-auto d-block" style="margin:auto;">
<br>

    <div style="padding:10px;"class="container-sm tbstyle"> <!-- 반응형,테이블 바디 가운데 배치법 -->
    <form method="get" action="" id="form" name="form" enctype="">
    
      <div class="row content-justify-center">
    <div class="col-">
    <h5>로그인</h5>
    </div>
    
    </div>
    <div class="row content-justify-center">
    <div class="col-">
   
     <label for="email" style="margin-bottom:10px;">
      <!-- &nbspE-Mail Address -->아이디
    </label>
    
    <input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="ID">
    
    </div>
    </div>
    
   
    
     <div class="row content-justify-center">
    <div class="col-">
    <label for="pwd" style="margin-bottom:10px;">
      비밀번호
    </label>
    
    <input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="Password">
    </div>
    </div>
    
     <div class="row content-justify-center">
    <div class="col-">
    <div>
    <input type="checkbox" id="remember" name="remember" value="remember"> 
    
    <label for="remember">아이디 저장</label>
    
    <a href="userform.html"style="float:right;" class="d-none d-sm-block">비밀번호를 잊으셨나요?</a>
    <a href="userform.html"style="float:right;" class="d-sm-none d-mb-block">비밀번호 찾기</a>
    </div>
    </div>
    </div>
    
     <div class="row content-justify-center">
    <div class="col-">
    
    <div class="d-grid gap-2">
    
 <button class="btn btn-primary" style="margin-bottom:-25px;" type="button" id="btnLogin" name="btnLogin" value="login">로그인</button>
  
</div>
    
    </div>
    </div>
    
     <div class="row content-justify-center">
    <div class="col-">
    
    <div class="d-grid gap-2">
    
 <button class="btn btn-success" style="margin-bottom:-25px;" type="button" id="login2" name="login2" value="login">네이버 로그인</button>
  
</div>
    
    </div>
    </div>
    
     <div class="row content-justify-center">
    <div class="col-">
    
    <div class="d-grid gap-2">
    
 <button class="btn btn-warning" type="button" id="login1" name="login1" value="login">카카오 로그인</button>
  
</div>
    
    </div>
    </div>
      <div class="row content-justify-center">
      
      
      
    <div class="col-">
    
    <p style="text-align: center;">계정이 없으신가요? <a href="userform.html">회원가입 하기</a></p>
    
    </div>
    
    
    
    
    </div>
    
    
    </form>
    
    </div>

  

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
     
      </script>
<script src="/infra/resources/js/vaildation.js">

</script>

<script type="text/javascript">
$("#btnLogin").on("click" , function(){
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
	
});



</script>



    </body>
</html>
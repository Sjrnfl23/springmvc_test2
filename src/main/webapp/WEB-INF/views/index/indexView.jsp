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

    <title>Hello, world!</title>
  </head>
  <body>
  <br>
<%-- 	 <p id="sessSeq">sessSeq: <c:out value="${sessSeq}"/></p>
	<p id="sessName">sessName: <c:out value="${sessName}"/></p>
	<p id="sessSeq">과자</p>
	 <p id="sessId">sessId: <c:out value="${sessId}"/></p>
	
	--%>
	
	sessSeq: <c:out value="${sessSeq }"/><br>
sessName: <c:out value="${sessName }"/><br>
sessId: <c:out value="${sessId }"/><br>
<br>
<c:if test="${not empty sessSeq}">
	<!-- <button type="button" class="btn btn-danger" id="btnLogout"></button> -->
	<button class="btn btn-danger" id="btnLogout">로그아웃</button>  
</c:if>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    
  </body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/vaildation.js"></script>

<script type="text/javascript">

$("#btnLogout").on("click" , function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/index/logoutProc"
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


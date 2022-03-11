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
	width: 800px;
	text-align:center;	
	
}

th, td {
	padding: 10px;
}
</style>

</head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<body>
<h1>회원정보</h1>

<hr>
 <form method="post" action="memberDelete">
  <input type ="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
	<table class="table"  style="width: 800px;"  border=1 >
	
	<colgroup>
<col style="background-color:#e9ecef;">
<col>
<col style="background-color:#e9ecef;">
<col>

</colgroup>

		<tr>
			<td>이름</td>
			<td><c:out value="${item.ifmmName}"/></td>
			<td>아이디</td>
			<td><c:out value="${item.ifmmId}"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><c:out value="${item.ifmmPassword}"/></td>
			<td>성별</td>
			<td><c:out value="${item.ifmmGender}"/></td>
		</tr>
		
		<tr>
			<td>생일</td>
			<td><c:out value="${item.ifmmBod}"/></td>
			<td>국적</td>
			<td><c:out value="${item.ifnaName}"/> </td>
		</tr>
		<tr>
			<td>주소</td>
			<td colspan=3><c:out value="${item.ifmaAddress1}"/> <c:out value="${item.ifmaAddress2}"/></td>

		</tr>
		<tr>
			<td>모바일 <img src="../../images/kakaotalk_48.png"></td>
			<td><c:out value="${item.ifmmPhone}"/></td>
			<td>모바일 마케팅 수신 동의</td>
			<td>O</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><c:out value="${item.ifmmPhone}"/></td>
			<td>팩스번호</td>
			<td>023-3561-2351</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><c:out value="${item.ifmeEmailFull}"/></td>
			<td>이메일 마케팅 수신 동의</td>
			<td>O</td>
		</tr>
		<tr>
			<td>추천인</td>
			<td colspan=3>sjkdi2</td>

		</tr>
		<tr>
			<td>비밀번호 문제</td>
			<td colspan=3><c:out value="${item.ifjqQuestionName}"/>
				</td>

		</tr>
		<tr>
			<td>비밀번호 답</td>
			<td colspan=3><c:out value="${item.ifjqAnswer}"/></td>

		</tr>
		</table>
		<br>
			<table border=1 class="table table-success table-striped" style="width: 800px;">
		<tr>
			<td>프로젝트 참여</td>
			<td>프로젝트명</td>
			<td>프로젝트 참여기간</td>
			<td>역활</td>
			<td>발주사</td>
		</tr>
		<tr>
			<td>2019년 3월~2019년 12월</td>
			<td>스마트미러</td>
			<td>9개월</td>
			<td>시스템 백엔드</td>
			<td>xx컴퍼니</td>
		</tr>



	</table>
	<br>
		<table class="table" style="width: 800px;">
			<colgroup>
<col style="background-color:#e9ecef; font-weight:bold;">
<col>
<col style="background-color:#e9ecef; font-weight: bolder; ">
<col>

</colgroup>
		<tr> 
			<td>SNS <img src="../../images/insta_48.png"></td>
			<td><c:out value="${item.ifaoSnsType}"/> : <c:out value="${item.ifaoUrl}"/></td>
			<td>사진</td>
			<td><img src="./img01.jpg" width=60 height=50></td>
		</tr>
		<tr>
			<td>홈페이지</td>
			<td>www.sjrnfl.com</td>
			<td>직업(희망)</td>
			<td>it개발자</td>
		</tr>
		

		<tr>
			<td>취미(다중선택)</td>
			<td colspan=3>게임,영화보기,음악감상</td>

		</tr>
		<tr>
			<td>결혼여부</td>
			<td>O</td>
			<td>결혼기념일</td>
			<td>2040년 4월 29일</td>
		</tr>
		<tr>
			<td>자녀유무</td>
			<td>1명(남)</td>
			<td>좋아하는 색깔</td>
			<td>하늘색(#50bcdf)</td>
		</tr>
		<tr>
			<td>본인소개</td>
			<td colspan=3>안녕하세요 24살 컴퓨터공학과 졸업예정인 권순형입니다 잘부탁드립니다.</td>

		</tr>
		<tr>
			<td>개인정보유효기간</td>
			<td colspan=3>3년</td>
		</tr>

        
	</table>
	<br>
	
	<a href="memberList"><input type="button" class="btn btn-primary" name="" id="" value="목록">
	
	
	
	
	</a>
	
	<input type="button" class="btn btn-warning" name="" id="" data-bs-toggle="modal" data-bs-target="#edit" value="수정"> 
	
	<div class="modal fade" id="edit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        수정하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <a href="memberEdit?ifmmSeq=<c:out value="${item.ifmmSeq}"/>"><button type="button" class="btn btn-warning">수정</button></a>
      </div>
    </div>
  </div>
</div>


	
	<input type="button" class="btn btn-danger" name="" id="" data-bs-toggle="modal" data-bs-target="#delete" value="삭제"> 
	
	<div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="font-weight:bold;">
        정말 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        
       
        <input type="submit" class="btn btn-danger" value="삭제">
     
      </div>
    </div>
  </div>
</div>

   </form>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> 

</body>
</html>

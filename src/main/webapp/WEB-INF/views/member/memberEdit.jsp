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
	font-family:Palatino;
	
}

th, td {
	
		padding: 15px;
	
	height:65px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1>회원수정</h1>
<hr>
<br>
<form action="/infra/member/memberUpdate" method="post">



<table border=1 class="table" style="width: 900px; " class="text-center">

<colgroup>
<col style="background-color:#e9ecef;">
<col>
<col style="background-color:#e9ecef;">
<col>

</colgroup>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="ifmmName" value="<c:out value="${item.ifmmName}"/>">
				</td>
			<td>아이디</td>
			<td>
				
				<input type ="text" name="ifmmId" value="<c:out value="${item.ifmmId}"/>">

			
				
				</td>
		</tr>
		<tr>
			<td> <label for="inputPassword6" class="col-form-label" >비밀번호</label>
			
			</td>
			<td>
		
				<input type="password" id="pwd" name="pwd" size="12" class="form-control" value="********" aria-describedby="passwordHelpInline">
					<span id="passwordHelpInline" class="form-text">
      8~12자 문자,숫자 포함
    </span>
				</td>
			<td>성별</td>
			<td>
				<input type="radio" class="btn-check" name="gender" id="man" value="여성" checked>
			
			<label class="btn btn-outline-success" for="man">남성</label>
				<input type="radio" name="gender" class="btn-check" id="woman" value="여성">
				<label class="btn btn-outline-danger" for="woman">여성</label>
			
			</td>
		</tr>
		<tr>
			<td>생일</td>
			<td>
				<input type="date" id="date" name="date" value="1999-06-05"></td>
			<td>국적</td>
			<td>
				<input type="text" id="country" name="country" value="대한민국"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td colspan=3>
				<input type="text" id="addr" name="addr" size="40" value="서울시 화곡로 66길 32">
			</td>

		</tr>
		<tr>
			<td>모바일(-포함)</td>
			<td>
			<select>
			<option>KT
			<option>SKT
			<option>LGU+
			</select>
			<select>
			<option>010
			<option>016
			<option>019
			</select>
			
			<input type="text" id="phone" name="phone" size="20" value="2352-3251"></td>
			<td>모바일 마케팅 수신 동의</td>
			<td><input type="radio" class="btn-check" name="infoagree" id="agree1" value="동의" checked>
			
			<label class="btn btn-outline-success" for="agree1">동의</label>
				<input type="radio" name="infoagree" class="btn-check" id="disagree1" value="미동의">
				<label class="btn btn-outline-danger" for="disagree1">미동의</label>
				</td>
		</tr>
		<tr>
			<td>전화번호(-포함)</td>
			
			<td>
			
			<select>
			<option>02
			<option>031
			<option>021
			<option>054
			</select>
			<input type="text" id="phone2" name="phone2" size="20" value="2352-3251"></td>
			<td>팩스번호(-포함)</td>
			<td><input type="text" id="fax" name="fax" size="20" value="2352-3251"></td>
		</tr>
		<tr>
			<td><label for="email" class="form-label">이메일</label></td>
			<td><input type="email" id="email" name="ifmeEmailFull" class="form-control" value="ksdkiopw2@gmail.com"></td>
			<td>이메일 마케팅 수신 동의</td>
			<td><input type="radio" name="emailagree" class="btn-check" id="agree2" value="동의" checked>
			<label class="btn btn-outline-success" for="agree2">동의</label>
			
				<input type="radio" name="emailagree" id="disagree2" class="btn-check" value="미동의">
				<label class="btn btn-outline-danger" for="disagree2">미동의</label>
				</td>
		</tr>
		<tr>
			<td>추천인</td>
			<td colspan=3><input type="text" id="rec" name="rec" size="20" value="sjrnfl23"></td>

		</tr>
		<tr>
			<td>비밀번호 문제</td>
			<td colspan=3><select>
			<option>기억에 남는 추억의 장소는?
			<option>자신의 인생 좌우명은?
			<option>자신의 보물 제1호는?
			<option>내가 태어난 동네 이름은?
			</select></td>

		</tr>
		<tr>
			<td>비밀번호 답</td>
			<td colspan=3><input type="text" id="answer" name="answer" value="아파트 옥상">  </td>

		</tr>
		
		</table >
		<br>
			<table border=1 class="table" style="width: 900px;">
			
			<colgroup>
<col style="background-color:#e9ecef;">
<col>
<col >
<col>
<col>

</colgroup>
		<tr>
			<td>번호</td>
			<td>프로젝트명</td>
			<td>프로젝트 참여기간</td>
			<td>역할</td>
			<td>발주사</td>
		</tr>
		<tr>
			<td>1</td>
			<td><input type="text" id="prjname" name="prjname" value="스마트미러" size=15> </td>
			<td><input type="month" id="month" name="month" value="2020-06">
			~
			<input type="month" id="monthsec" name="monthsec" value="2020-12">
			</td>
			<td><input type="text" id="role" name="role" size=10 value="시스템 백엔드"> </td>
			<td><input type="text" id="orderer" name="orderer" size=10 value="xx컴퍼니"> </td>
		</tr>
		<tr>
			<td>2</td>
			<td><input type="text" id="prjname2" name="prjname2" value="스마트우편함" size=15> </td>
			<td><input type="month" id="month2" name="month2" value="2021-01">
			~
			<input type="month" id="monthsec2" name="monthsec2" value="2022-01">
			</td>
			<td><input type="text" id="role2" name="role2" size=10 value="프론트엔드"></td>
			<td><input type="text" id="orderer2" name="orderer2" size=10 value="oo컴퍼니"> </td>
		</tr>
		<tr>
			<td>3</td>
			<td><input type="text" id="prjname3" name="prjname3" value="스마트안경" size=15></td>
			<td><input type="month" id="month3" name="month3" value="2020-01">
			~
			<input type="month" id="monthsec3" name="monthsec3" value="2021-01">
			</td>
			<td><input type="text" id="role3" name="role3" size=10 value="DB매니저"> </td>
			<td><input type="text" id="orderer3" name="orderer3" size=10 value="ab컴퍼니"> </td>
		</tr>



	</table>
	<br>
		<table class="table" style="width: 900px;">
		<colgroup>
<col style="background-color:#e9ecef; " >
<col>
<col style="background-color:#e9ecef;">
<col>

</colgroup>
		<tr>
			<td>SNS</td>
			<td><select>
			<option>facebook
			<option>instagram
			<option>twitter
			</select> 
			<input type="text" id="SNS" name="sns" value="www.instagram/sjrnfl">
			
			</td>
			<td><label for="formFileSm" class="form-label">사진</label></td>
			<td><!-- <img src="./img01.jpg" width=50 height=50> -->
			<input class="form-control form-control-sm" id="formFileSm"  type="file" name="img">
			 </td>
		</tr>
		<tr>
			<td>홈페이지</td>
			<td><input type="text" id="homepg" name="homepg" value="www.naver.com">  </td>
			<td>직업(희망)</td>
			<td><input type="text" id="job" name="job" size="15" value="it개발자"> </td>
		</tr>
		
		
		<tr>
			<td>취미(다중선택)</td>
			<td colspan=3>
		<input type="checkbox" class="form-check-input" id="hob1" name="hob" value="운동">
			 <label class="form-check-label" for="hob1">
    			운동
 		 		</label>
			
			<input type="checkbox" id="hob2" name="hob" value="악기연주" class="form-check-input">
			 <label class="form-check-label" for="hob2">악기연주</label>
		
			<input type="checkbox" id="hob3" name="hob" value="게임" class="form-check-input">
			 <label class="form-check-label" for="hob3">게임</label>
			
			<input type="checkbox" id="hob4" name="hob" value="공예" class="form-check-input">
			 <label class="form-check-label" for="hob4">공예(실뜨기등)</label>
			
			<input type="checkbox" id="hob5" name="hob" value="등산" class="form-check-input">
			 <label class="form-check-label" for="hob5">등산</label>
			
			<input type="checkbox" id="hob6" name="hob" value="음악감상" class="form-check-input">
			 <label class="form-check-label" for="hob6">음악감상</label>
			
			
			</td>

		</tr>
		<tr>
			<td>결혼여부</td>
			<td><input type="radio" class="btn-check" name="marry" id="marry" value="O" checked>
			<label class="btn btn-outline-success" for="marry">O</label>
			
				<input type="radio" class="btn-check" name="marry" id="dontmarry"value="X"> 
				<label class="btn btn-outline-danger" for="dontmarry">X</label>
				</td>
			<td>결혼기념일</td>
			<td><input type="date" id="marrydate" name="marrydate" value="2022-06-01"></td>
		</tr>
		<tr>
			<td>자녀유무</td>
			<td><input type="radio" class="btn-check" id="child1" name="son" value="없음" checked>
			
			<label class="btn btn-outline-success" for="child1">없음</label>
			<input type="radio" class="btn-check" id="child2" name="son" value="1명">
			<label class="btn btn-outline-success" for="child2">1명</label>
			
			<input type="radio" class="btn-check" id="child3" name="son" value="2명">
			<label class="btn btn-outline-success" for="child3">2명</label>
			<input type="radio" class="btn-check" id="child4" name="son" value="3명">
			<label class="btn btn-outline-success" for="child4">3명</label>
			  </td>
			<td>좋아하는 색깔</td>
			<td><input type="color" id="color" class="form-control form-control-color" value="#ffffff" name="color"> </td>
		</tr>
		<tr>
			<td>본인소개</td>
			
			<td colspan=3>
			<div class="form-floating">
  <textarea class="form-control"  id="floatingTextarea2" style="height: 100px" >안녕하세요 초대졸 예정인 24살 xxx입니다 잘 부탁드립니다</textarea>
  <label for="floatingTextarea2" ></label>
</div>
			
			</td>
			

		</tr>
		<tr>
			<td>개인정보유효기간</td>
			<td colspan=3><input type="radio" class="btn-check" id="ab1" name="ab" value="1년" checked>
			<label class="btn btn-outline-success" for="ab1">1년</label>
			<input type="radio" class="btn-check" id="ab2" name="ab" value="3년">
			<label class="btn btn-outline-success" for="ab2">3년</label>
			<input type="radio" class="btn-check" id="ab3" name="ab" value="5년">
			<label class="btn btn-outline-success" for="ab3">5년</label>
			
		</tr>


	</table>

<br>


 
 <a href="memberList"><input type="button" class="btn btn-primary" value="목록"></a>
 
 <input type ="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
 
  <input type="submit" class="btn btn-warning" value="수정">
  
</form>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>







</body>
</html>

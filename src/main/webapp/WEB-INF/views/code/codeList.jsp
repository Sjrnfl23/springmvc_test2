<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<form id="" name="" method="get" action="/infra/code/codeList">
<select name="shIfcgSeq">
	<option value="">::코드그룹::
	
	<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
	<option value="<c:out value="${item.ifcgSeq}"/>"<c:if test="${param.shIfcgSeq eq item.ifcgSeq}">selected</c:if>><c:out value="${item.ifcgName}"/>
	
	</option>
	</c:forEach>

</select>
<input type="text" name="shValue" value="<c:out value="${vo.shValue}"/>">
<input type="submit" name="search" value="검색">
<br>



<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		<a href="/infra/code/codeView?ifcdSeq=<c:out value="${item.ifcdSeq}"/>"> <c:out value="${item.ifcdName}"/> | <c:out value="${item.ifcdOrder}"/> | <c:out value="${item.ifcgSeq}"/></a> 
		<%-- <c:out value="${item.ifcgSeq}"/> | <c:out value="${item.ifcgName}"/> | <c:out value="${item.ifcgDelNy}"/> --%> <br>
			<%-- <a href="/infra/code/codeGroupEdit?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a> --%>
		</c:forEach>
	</c:otherwise>
</c:choose>	

<c:out value="${vo.startPage}"/>
<nav aria-label="Page navigation example">
  <ul class="pagination">
  
   <c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${vo.startPage - 1}">Previous</a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="/infra/code/codeList?thisPage=${i.index}">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>     
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${vo.endPage + 1}">Next</a></li>
</c:if>  
  </ul>
  
</nav>

 </form>
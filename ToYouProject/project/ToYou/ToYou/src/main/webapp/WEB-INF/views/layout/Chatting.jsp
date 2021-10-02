<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>



<c:choose>
	<c:when test="${empty principal}">

	</c:when>
	<c:otherwise>
		<input type="hidden" id="userNo" value="${principal.user.userNo}">
		<input type="hidden" id="userName" value="${principal.user.userName}">
		<div class="appBtn"
			style="width: 50px; height: 50px; position: fixed; bottom: 10%; right: 5%; z-index: 180;">
			<a id="atag" target='_blank'
				href="http://3.35.11.4:5000/chatting.html?name=${principal.user.userName}&"
				onclick="window.open(this.href, '_blank', 'width=500, height=600'); return false;"><img
				src="/image/button.png">
			<p style="text-color: black">${principal.user.userName}</p></a>
		</div>

	</c:otherwise>
</c:choose>

<script type="text/javascript">
var user = $('#userNo').val();
var userName = $('#userName').val();
	$.ajax({
	    url: "/auth/getUser",
	    data: { "userNo" : user },
	    type : "get",
	    datatype : "json",
	    success: function(data) {      
		             
	     	$("#atag").prop('href', "http://3.35.11.4:5000/chatting.html?name="+userName+"&profile="+data)
	    },error: function(request,status,error){
	       
	    }
	});
</script>
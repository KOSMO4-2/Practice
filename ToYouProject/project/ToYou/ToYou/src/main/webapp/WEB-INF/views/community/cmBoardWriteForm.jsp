<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>You To You &mdash; Youtuber Management 커뮤니티 rptlvks</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Overpass:300,400,500|Dosis:400,700" rel="stylesheet">
<link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">
<link rel="stylesheet" href="/css/ionicons.min.css">
<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/fancybox.min.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<!------Header-------->
<%@ include file="../layout/header.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/header.jsp" flush="true"></jsp:include> --%>
<!------Header-------->

  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 block-30-sm item" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-7">
              <h2 class="heading mb-5">커뮤니티 생성</h2>
        <!-- <p style="display: inline-block;"><a href="https://vimeo.com/channels/staffpicks/93951774"  data-fancybox class="ftco-play-video d-flex"><span class="play-icon-wrap align-self-center mr-4"><span class="ion-ios-play"></span></span> <span class="align-self-center">Watch Video</span></a></p> -->           
        <!-- 메인 중앙 검색창
               <div class="input-group">
                   <input type="text" class="form-control" placeholder="검색어를 입력하세요">
                   <span class="input-group-btn">
                   <button class="btn btn-secondary" type="button">검색</button>
                   </span>
              </div> END 메인 중앙 검색창 -->
             </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  
  
  
   <!-- 회원가입 시작 --> 

<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 1000px;">
	<h4 class="card-title mt-3 text-center">Create Community</h4>
		<form>  			
		  	<input class="form-control" name="communityNo" id="communityNo" type="hidden" value="99">
		  	<input class="form-control" name="userNo" id="userNo" type="hidden" value="${principal.user.userNo}">
		  	<input class="form-control" name="communityBoardNo" id="communityBoardNo" type="hidden" value="">
		  	<table class="table table-striped commu_board">
		  		<tr>
		  			<td><span class="input-group-text" ><strong>Title</strong></span></td>
		  			<td colspan='3'><div class="input-group-prepend"><input class="form-control" name="communityBoardTitle" id="communityBoardTitle" type="text"></div></td>
		  		</tr>
		  		<tr>
		  			<td><span class="input-group-text"><strong>Writer</strong></span></td>
		  			<td><div class="input-group-prepend"><input class="form-control" name="userName" id="userName" value="${principal.user.userName }"></div></td>
		  			<td ><div class="input-group-prepend"><select name="communityBoardIspublic">
		  													<option value="1">공개</option>
		  													<option value="0">비공개</option>
		  												</select></div></td>
		  		
		  		</tr>
		  		<tr>
		  			<td><span class="input-group-text" ><strong>file upload</strong></span></td>
		  			<td colspan='3'><div class="input-group-prepend"><input class="form-control" name="communityBoardImgname" id="communityBoardImgname" type="file"></div></td>
		  		</tr>
		  		<tr>
		  			<td><span class="input-group-text" ><strong>Content</strong></span></td>
		  			<td colspan='3'><div class="input-group-prepend"><textarea class="form-control" name="communityBoardContent" id="communityBoardContent"></textarea></div></td>
		  		</tr>
		  	</table>
		   
		    <div class="form-group">
		        <input type="button" id="signupBtn" class="btn btn-primary btn-block" value="Create Account"> 
		    </div> <!-- form-group// -->      
		</form>

</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

<!-- Footer -->
<%@ include file="../layout/footer.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/footer.jsp" flush="true"></jsp:include>
 --%><!-- Footer -->
 
 <script type="text/javascript">
$(document).ready(function(){  

})
</script>
  </body>
</html>
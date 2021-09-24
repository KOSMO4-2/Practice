<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>You To You &mdash; Youtuber Management 커뮤니티</title>
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
	<p class="text-center">Get started with your free community</p>

	
		<form>
            <div class="form-group input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
				</div>
		  	    	<input class="form-control" name="userId" id="userId"  placeholder="ID" type="text">
		        	<input type="button" class="btn btn-primary btn-block" value="확인" id="idCheck"  style="width: 50px;"/>
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
		        <input class="form-control" name="userPassword" id="userPassword"  placeholder="Create password" type="password">
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
		        <input class="form-control" name="passwdCheck" id="passwdCheck"  placeholder="Repeat password" type="password">
		    </div> <!-- form-group// -->                                      
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
		        <input class="form-control" name="userName" id="userName"  placeholder="Name" type="text">
		    </div> <!-- form-group// -->                                      
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
				 </div>
		        <input class="form-control" name="userEmail" id="userEmail" placeholder="Email address" type="email">
		    </div>
		    <!-- form-group// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
				 </div>
		        <input class="form-control" name="userChannelLink" id="userChannelLink" placeholder="Your Youtube" type="search">
		        <input type="button" class="btn btn-primary btn-block" id="searchMyChennel"  style="width: 50px;" value="검색" />
		    </div>
		    <div id="chResult">
		    </div>
		     <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
		        <select id="userChannelCategory">
		        	<option value="0">select category</option>
		        	<option value="1">영화 & 애니메이션</option>
		        	<option value="2">자동차 & 오토바이</option>
		        	<option value="10">음악</option>
		        	<option value="17">스포츠</option>
		        	<option value="19">여행 & 이벤트</option>
		        	<option value="20">게임</option>	        
		        	<option value="22">인물 & 블로그</option>	        
		        	<option value="23">유머</option>	        
		        	<option value="24">가족 엔터테이먼트</option>	        
		        	<option value="25">뉴스 & 정치</option>	        
		        	<option value="26">노하우 & 스타일</option>	        
		        	<option value="27">교육</option>	        
		        	<option value="28">과학 & 기술</option>	        
		        	<option value="29">비영리 & 사회운동</option>	             
		        </select>
		    </div> <!-- form-group// -->  
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
				 </div>
		        <input class="form-control" name="userRolemodelLink" id="userRolemodelLink" placeholder="Your Role Model" type="text">
		        <input type="button" class="btn btn-primary btn-block" id="searchRoleChennel"  style="width: 50px;" value="검색" />
		    </div>
		    <div id="chRoleResult">
		    </div>
		    
	
		    <!--  <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
				</div>
				<select class="custom-select" style="max-width: 120px;">
				    <option selected="">+971</option>
				    <option value="1">+972</option>
				    <option value="2">+198</option>
				    <option value="3">+701</option>
				</select>
		    	<input name="" class="form-control" placeholder="Phone number" type="text">
		    </div> --> 
		    <!-- form-group// -->
		    <!--
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
				</div>
				<select class="form-control">
					<option selected=""> Select job type</option>
					<option>Designer</option>
					<option>Manager</option>
					<option>Accaunting</option>
				</select>
			</div>--> 
			<!-- form-group end.// --> 
		    
		    <div class="form-group">
		        <input type="button" id="signupBtn" class="btn btn-primary btn-block" value="Create Account"> 
		    </div> <!-- form-group// -->      
		    <p class="text-center">Have an account? <a href="">Log In</a> </p>                                                                 
		</form>                                      
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
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
              <h2 class="heading mb-5">멤버 관리</h2>
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
<div class="container">
	<div class="card bg-light">	
		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title_m_tx text-center ">
							<h3>커뮤니티 멤버 관리</h3>
					
						</div>
							<table class="table table-striped commu_board">
							<thead>
								<tr class="text-center">
									<th>회원번호</th>
			 						<th>아이디</th>
			 			 			<th>가입상태</th>
			 						<th>기능</th>
								</tr>
							</thead>
								<tbody id="userInfoList" class="text-center">
				
								</tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

<!-- Footer -->
<%@ include file="../layout/Menu.jsp"%>
<%@ include file="../layout/footer.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/footer.jsp" flush="true"></jsp:include>
<!-- Footer --> --%>
 
 <script type="text/javascript">
$(document).ready(function(){

	
})
</script>
  </body>
</html>
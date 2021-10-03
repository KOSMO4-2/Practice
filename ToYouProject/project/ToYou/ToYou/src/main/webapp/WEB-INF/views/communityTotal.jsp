<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
<title>You To You &mdash; Youtuber Management</title>
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
<%@ include file="layout/header.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/header.jsp" flush="true"></jsp:include> --%>
<!------Header-------->

	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31">
			<div class="block-30 block-30-sm item"
				style="background-image: url('/image/bg_1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">Toyou 커뮤니티</h2>
							
							
							
							
							<!-- <p style="display: inline-block;"><a href="https://vimeo.com/channels/staffpicks/93951774"  data-fancybox class="ftco-play-video d-flex"><span class="play-icon-wrap align-self-center mr-4"><span class="ion-ios-play"></span></span> <span class="align-self-center">Watch Video</span></a></p> -->
							
               <div class="input-group">
                   <input type="text" class="form-control" placeholder="커뮤니티 검색">
                   <span class="input-group-btn">
                   <button class="btn btn-secondary" type="button">검색</button>
                   </span>
              </div> 
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	

	<div class="container">
			<!-- New Community ############################################# -->
			<div class="row commu">
				<h3 class="col-12">New 커뮤니티</h3>
				<br><br><br>
					<c:choose>
						<c:when test="${!empty communityNo}">
							<c:forEach var="i" begin="0" end="${fn:length(communityNo)-1}">
								<div class="col-md-3 col-lg-3 mb-3">
									<div class="person-donate text-center">
									<a href="/auth/community/community?communityNo=${communityNo.get(i)}">
												<img src="${channelImg.get(i)}" alt="Image placeholder"
													class="img-left">
												<div class="donate-info">
													<span>${channelName.get(i)}</span>
													<span class="time d-block mb-3 text-danger">가입자 : ${userJoinCnt.get(i)}명</span>
													<h2>${cmTitle.get(i)}</h2>
													<p>
														${cmDescription.get(i)}
													</p>
												</div>
									</a>
									</div>
								</div>
							</c:forEach>
							<div class="col-md-12 col-lg-12 md-5">
								<ul class="pagination justify-content-center">
							    <li class="page-item"><a class="page-link" href="?page=${previous}">Previous</a></li>
							    <li class="page-item"><a class="page-link" href="?page=${next}">Next</a></li>           
							</ul>
							</div>
					</c:when>
					<c:otherwise>
						<div><span><strong>새로 등록된 커뮤니티가 없습니다</strong></span></div>
					</c:otherwise>
				 </c:choose>
			</div>

		<!-- Big Community ############################################# -->
			<div class="row commu">
			<h3 class="col-12">Big 커뮤니티</h3>
			<br><br><br>
			<c:choose>
				<c:when test="${!empty bigcommunityNo}">	
					<c:forEach var="i" begin="0" end="${fn:length(bigcommunityNo)-1}">
						<div class="col-md-3 col-lg-3 mb-3">
							<div class="person-donate text-center">
							<a href="/auth/community/community?communityNo=${bigcommunityNo.get(i)}">
										<img src="${bigchannelImg.get(i)}" alt="Image placeholder"
											class="img-left">
										<div class="donate-info">
											<span>${bigchannelName.get(i)}</span>
											<span class="time d-block mb-3 text-danger">가입자 : ${biguserJoinCnt.get(i)}명</span>
											<h2>${bigcmTitle.get(i)}</h2>
											<p>
												${bigcmDescription.get(i)}
											</p>
										</div>
							</a>
							</div>
						</div>
					</c:forEach>
						<div class="col-md-12 col-lg-12 md-5">
							<div class="person-donate text-left"></div>
						</div>
				</c:when>
				<c:otherwise>
					<div><span><strong>활동중인 커뮤니티가 없습니다</strong></span></div>
				</c:otherwise>
			 </c:choose>
			 </div>
		
		
		
		<!-- Hot Community ############################################# -->
		
			<div class="row commu">
				<h3 class="col-12">Hot 커뮤니티</h3>
				<br><br><br>
					<c:choose>
						<c:when test="${!empty hotcommunityNo}">									
							<c:forEach var="i" begin="0" end="${fn:length(hotcommunityNo)-1}">
								<div class="col-md-3 col-lg-3 mb-3">
									<div class="person-donate text-center">
									<a href="/auth/community/community?communityNo=${hotcommunityNo.get(i)}">
												<img src="${hotchannelImg.get(i)}" alt="Image placeholder"
													class="img-left">
												<div class="donate-info">
													<span>${hotchannelName.get(i)}</span>
													<span class="time d-block mb-3 text-danger">가입자 : ${hotuserJoinCnt.get(i)}명</span>
													<h2>${hotcmTitle.get(i)}</h2>
													<p>
														${hotcmDescription.get(i)}
													</p>
												</div>
									</a>
									</div>
								</div>
							</c:forEach>
							<div class="col-md-12 col-lg-12 md-5">
								<div class="person-donate text-left"></div>
							</div>
					</c:when>
					<c:otherwise>
						<div><span><strong>활동중인 커뮤니티가 없습니다</strong></span></div>
					</c:otherwise>
				 </c:choose>
			</div>
			
		

			<div class="col-md-12 col-lg-12 md-5">
				<div class="person-donate text-left"></div>
			</div>

		
		

			
			
			
	</div>



        
<!-- Footer -->
<%-- <%@ include file="layout/footer.jsp"%> --%>

<jsp:include page="layout/footer.jsp" flush="true"></jsp:include>

<%@ include file="layout/Chatting.jsp"%>
 
  </body>
</html>
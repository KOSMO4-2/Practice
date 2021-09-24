<%@page import="org.springframework.web.bind.annotation.RequestAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!------Header-------->


<!-- ==================================================================================== -->
<!-- 배너 시작 -->
	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31">
			<div class="block-30 block-30-sm item" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">결제</h2>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
<!-- 배너 종료 -->	
<!-- ==================================================================================== -->





	<div class="site-section border-top text-center col-lg-12">	
		<br>
		<br>		
		
		<h2>${principal.user.userName}님, 결제가 완료되었습니다.</h2>
		<br>
		
		<h5>감사..</h5>
	</div>



<form action="/" method="post">
	<div class="site-section section-counter">
		<div class="container">
			<div class="block-48">			   			    
			    <div class="row">
					<!-- 이름 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">이름</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">${principal.user.userName}</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 이름 종료 -->
				    <!-- 이메일 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">이메일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">${principal.user.userEmail}</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 이메일 종료 -->	
				    <!-- 선택등급 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">선택등급</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
										<p style="color:red">${gradeOfSubscriber}</p>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 선택등급 종료 -->
				    <!-- 결제금액 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">결제금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<c:if test='${gradeOfSubscriber == "STANDARD"}'>월 29,000원</c:if>
											<c:if test='${gradeOfSubscriber == "STARTUP"}'>월 59,000원</c:if>
											<c:if test='${gradeOfSubscriber == "PROFESSIONAL"}'>월 99,000원</c:if>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 결제금액 종료 -->				  
				</div>
  		    	<div class="row">
				    <!-- 카드종류 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">카드종류</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<select style="width:120px;height:35px;text-align:center;">
												<option>현대카드</option>
												<option>국민카드</option>
												<option>롯데카드</option>
												<option>신한카드</option>
												<option>기타</option>
											</select>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 카드종류 종료 -->
				    <!-- 카드번호 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">카드번호</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<input type="text" maxlength="4" size="3" style = "text-align:center;">-
											<input type="text" maxlength="4" size="3" style = "text-align:center;">-
											<input type="password" maxlength="4" size="3" style = "text-align:center;" autocomplete="new-password">-
											<input type="text" maxlength="4" size="3" style = "text-align:center;">
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 카드번호 종료 -->
				    <!-- 유효기간 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">유효기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											MM&nbsp;:&nbsp;<input type="text" maxlength="2" size="2" style = "text-align:center;">&nbsp;&nbsp;/&nbsp;&nbsp; 
											YY&nbsp;:&nbsp;<input type="text" maxlength="2" size="2" style = "text-align:center;">
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- 유효기간 종료 -->
				    <!-- CVC 시작 -->
						<div class="col-sm-3 text-center">
							<table class="table table-sm col-md-1 text-center">
								<thead class="thead-dark">
									<tr>
										<th scope="col">CVC</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<input type="password" maxlength="3" size="3" style = "text-align:center;" autocomplete="new-password">
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- CVC 종료 -->				  
 				</div>
  		    	<div class="row"> 
					<!-- 결제버튼 시작 -->	
						<div class="col-sm-12 text-center">
				        	<table class="table-sm col-md-12 text-center">
			 					<tbody>
			 						<tr>
										<td class="text-center">
			        								<div class="form-group">
			        									<button type="submit" class="btn btn-default">결제하기</button>
			        								</div>
			       						</td>
									</tr>
								</tbody>
				        	</table>	        
				        </div>
					<!-- 결제버튼 종료 -->
				</div>
			</div>
		</div>
	</div>
</form>     


   
   
	    <%-- 
	    
		[ 주문내역조회 ]
	
		이름
		
		주문번호
		
		결제날자
	
		결제정보
		
		결제금액
		
		결제수단 : 카드
	
		구독기간
		
		다음 결제일
		
		상품명
		
		--%>	


        
<!-- Footer -->
<%@ include file="layout/footer.jsp"%>
<!-- Footer -->
  </body>
</html>
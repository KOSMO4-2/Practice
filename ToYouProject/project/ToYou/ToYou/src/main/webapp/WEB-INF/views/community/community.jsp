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
<%@ include file="../layout/header.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/header.jsp" flush="true"></jsp:include> --%>
<!------Header-------->

	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31">
			<!-- 추후 배너는 ChannelOwners 에서 가져올 예정 -->
			<div class="block-30 block-30-sm item"
				style="background-image: url('${channelInfo.chBanner}');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">${channelInfo.chTitle}</h2>
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
		
		<div class="row commu">
			<div class="dropdown event-dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Test<span class="caret"></span></a>
					<ul class="dropdown-menu">
						
						<c:choose>
							<c:when test="${principal.user.userNo == community.communityHostno }">
									<li><a id="modifyCmBtn" href="#">커뮤니티 수정</a></li>
									<li><a id="deleteCmBtn" href="#">커뮤니티 삭제</a></li>
									<li><a id="memberMgtBtn" href="/auth/community/cmUserInfoModifyForm?communityNo=${community.communityNo}">멤버 관리</a></li>
							</c:when>
							<c:otherwise>
									<li><a id="signUpBtn" href="#">가입 신청</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
			</div>
			<input type="hidden" value="${principal.user.userNo}" id="userNo">
			<div class="col-md-8 col-lg-12 mb-5">
				<div class="commu_title_1 text-center">
				<input type="hidden" id="communityNo" value="${community.communityNo}">
					<h2>${community.communityTitle}</h2>
					<hr>
				</div>
				<div class="row">
				<div class="col-2"></div>
					<div class="person-donate text-left col-3">
						<img src="${user.userChannelImg}" alt="Image placeholder"
							class="img-left">
						<div class="donate-info">
							<h4>${user.userChannelName }</h4>
							<span class="time d-block mb-3 text-danger">가입자 : ${JoinCnt} 명</span>
						</div>
					</div>
					<div class="person-donate text-left col-7">
					<div class="commu_title_1">
						<h2>커뮤니티 소개</h2>
					</div>
						<div class="donate-info">
							<p>
								${community.communityDescription}
							</p>
						</div>
					</div>
				</div>
			</div>
		
		</div>
	</div>




	<div class="site-section border-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="commu_title_2">
						<h3>커뮤니티 가입 채널</h3>
					</div>
					<div class="person-donate2">
						<img src="/image/person_1.jpg" alt="Image placeholder"
							class="img-left">
						<div class="text_ch">
							<a href="#">[채널명]</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="commu_title_3">
						<h3>커뮤니티 가입 신청 채널</h3>
					</div>
					<div class="person-donate2">
						<img src="/image/person_1.jpg" alt="Image placeholder"
							class="img-left">
						<div class="text_ch">
							<a href="#">[채널명]</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title_m_tx text-left ">
						<h3>커뮤니티 게시판</h3>
				
					</div>
						<table class="table table-striped commu_board">
						<thead>
							<tr class="text-center">
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody id="boardList" class="text-center">
						<c:if test="${fn:length(boards)-1 >= 0}">
							<c:forEach var="i" begin="0" end="${fn:length(boards)-1}">
								<tr>
									<!-- 작성자, 커뮤니티 호스트 가 아니면 공개글만 노출 -->
									<c:choose>
										<c:when test="${principal.user.userNo != boardWriter.get(i).userNo && principal.user.userNo != community.communityHostno}">
											<c:if test="${boards.get(i).communityBoardIspublic == 1 }">
												<td>${i}</td>
												<td><a style="color:black" href='/auth/community/boardView?communityBoardNo=${boards.get(i).communityBoardNo}&communityNo=${community.communityNo}'>${boards.get(i).communityBoardTitle}</a></td>
												<td>${boardWriter.get(i).userName}</td>
												<td>${boards.get(i).communityBoardViewcnt}</td>
												<td>${boards.get(i).communityBoardWritedate}</td>
											</c:if>
										</c:when>
										<c:otherwise>
												<td>${i}</td>
												<td><a style="color:black" href='/auth/community/boardView?communityBoardNo=${boards.get(i).communityBoardNo}&communityNo=${community.communityNo}'>${boards.get(i).communityBoardTitle}</a></td>
												<td>${boardWriter.get(i).userName}</td>
												<td>${boards.get(i).communityBoardViewcnt}</td>
												<td>${boards.get(i).communityBoardWritedate}</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</c:if>
						</tbody>
						</table>
						<c:if test="${!empty principal}">
						<div class="form-row float-right">
							<button class="btn btn-default" onclick="location.href='/auth/community/cmBoardWriteForm?communityNo=${community.communityNo}'">게시글 작성</button>
						</div>
						</c:if>
				</div>
			</div>
		</div>
	</div>



        
<!-- Footer -->
<%-- <%@ include file="layout/footer.jsp"%> --%>

<jsp:include page="../layout/footer.jsp" flush="true"></jsp:include>
<%@ include file="../layout/Chatting.jsp"%>
 <script type="text/javascript">
$(document).ready(function(){

	// 커뮤니티 수정 폼 이동
	$(document).on("click","#modifyCmBtn",function(){
		var communityNo = $("#communityNo").val();
		location.href="/auth/community/cmModifyForm?communityNo="+communityNo
	})
	
// 	// 멤버관리 폼 이동
// 	$(document).on("click","#memberMgtBtn"),function(){
// 		var communityNo = $("#communityNo").val();
// 		location.href="/auth/community/cmUserInfoModifyForm?communityNo="+communityNo
// 	}


	// 게시글 삭제
	$(document).on("click","#deleteCmBtn",function(){
		var communityNo = $("#communityNo").val();
		$.ajax({
			url:"/auth/community/deleteCommunity/"+communityNo,
			type:"delete",
			contentType: "application/json; charset=utf-8",
			dataType:"json",
			success: function(result){
				if(result.status == 500 ){
					alert("커뮤니티 삭제에 실패하셨습니다.");					
				}else{
					alert("커뮤니티가 삭제되었습니다.");					
					location.href="/auth/communityTotal"
				}
			},
			error: function(){
				alert("서버에러");
			}
		
		})

	})

	$(document).on("click","#signUpBtn",function(){
		var userNo = $("#userNo").val();
		var communityNo = $("#communityNo").val();
		if(userNo == null || userNo == ""){
			alert("로그인이 필요한 서비스 입니다.")
			location.href="/auth/loginForm";
		}else{
			$.ajax({
				url: "/auth/community/signUpCm",
				type: "post",
				data: {userNo:userNo,
					communityNo:communityNo},
             	success: function(result){
    				if(result == "0" ){
    					alert("이미 가입하셨습니다.");					
    				}else{
    					alert("가입신청이 완료되었습니다.");					
    				}
				},
				error: function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
		}
	})

		
})
 </script>
  </body>
</html>
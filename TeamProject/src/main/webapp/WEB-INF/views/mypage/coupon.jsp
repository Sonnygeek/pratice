<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-relative"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
  <script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<%--   <script src="${pageContext.request.contextPath }/resources/jsPro/coupon.js"></script> --%>
  </head>

  <body>
  <!-- 메뉴단 -->
<jsp:include page="../inc/menu.jsp"/>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
		<jsp:include page="../inc/mypage-menu.jsp"/>

           <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">포인트 · 쿠폰 /</span> 쿠폰</h4>

                 <div class="row">
	              	<div class="col-md-12">
	                 <ul class="nav nav-pills flex-column flex-md-row mb-3">
	                   <li class="nav-item">
	                     <a class="nav-link" href="${pageContext.request.contextPath }/mypage/point">
	                     <i class="bx bx-buildings me-1"></i> 포인트</a>
	                   </li>
	                   <li class="nav-item">
	                     <a class="nav-link active" href="${pageContext.request.contextPath }/mypage/coupon">
	                     <i class="bx bx-buildings me-1"></i> 쿠폰</a>
	                   </li>
	                 </ul>

                  <div class="card mb-4">
                    <h5 class="card-header">쿠폰 등록</h5>

                    <hr class="my-0" />
                    <div class="card-body">
                      <form id="formAccountSettings" action="${pageContext.request.contextPath}/mypage/couponInsert" method="POST">
                         <div class="row  mt-3 mb-3">
                          <div class="mb-3 col-md-8" style="padding-left:20%">
                            <label for="userNm" class="form-label">쿠폰 코드</label>
                            <input class="form-control form-control-lg" type="text" name="couNum" id="couNum" placeholder="18자리 숫자를 적어주세요"/>
                          </div>
                        <div class="mb-3 col-md-4">
                          <button type="submit" class="btn btn-primary me-2" style="margin-top: 1.8rem; height:60%">+ 추가</button>
                          <button type="reset" class="btn btn-outline-secondary" style="margin-top: 1.8rem; height:60%">취소</button>
                        </div>
                      </form>
                        </div>
                    </div>
                    </div>

              <!-- Examples -->

              <h5 class="pb-1 mt-5 mb-3">쿠폰 리스트</h5>
              <div class="row mb-5">
              <c:forEach var="couponDTO" items="${couponList }" >
                <div class="col-md-6 col-lg-4 mb-3">
                  <div class="card">
                    <a onclick="couponDelete();"><img src="${pageContext.request.contextPath }/resources/img/icon/ic_close.svg" class="m_header-banner-close right" width="50px" style="cursor:pointer;"></a>
                    <div class="card-header"><h2 style="color:#6c757d; font-weight:990 !important">
                    	<strong>${couponDTO.couNum }</strong></h2>
                    </div>
                    <div class="card-body">
                      <h5 class="card-title"><strong>${couponDTO.couNm }
                      	<span class="badge bg-primary">
                      		<fmt:formatNumber type="number" maxFractionDigits="0" value="${couponDTO.couDc }"/>m
                      	</span></strong></h5>
                      <p class="card-text">
                      <hr>
                       ${couponDTO.couDet }
                    </div>
                    <input type="hidden" name="sbCount" value="${couponDTO.couNum}" id="delCouNum">
                  </div>
                </div>
              </c:forEach>
              </div>
              </div>
              </div>
              <!--/ Content types -->
              </div>

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                </div>
                <div>
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${pageContext.request.contextPath }/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <!-- Footer Section Begin -->
    <jsp:include page="../inc/footer.jsp"/>
</body>

</html>

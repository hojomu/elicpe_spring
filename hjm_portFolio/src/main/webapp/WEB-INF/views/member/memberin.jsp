<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Login</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/resources/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/resources/vendor/remixicon/remixicon.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/css/style_register.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

<main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">회원가입</h5>
                    <p class="text-center small">회원 정보를 입력해주세요</p>
                  </div>

                  <form class="row g-3 needs-validation" id="regist" action="/memberin" method="post">

                    <div class="col-12" id="id-box">
                      <label for="id" class="form-label">아이디</label>
                        <input type="text" name="id" class="form-control" id="id" required>
                        <div class="valid-feedback">올바른 아이디 입니다.</div>
                        <div class="invalid-feedback">영문,숫자가 포함된 4~19자리 아이디를 입력하세요</div>
                    </div>

                    <div class="col-12" id="password-box">
                      <label for="password" class="form-label">비밀번호</label>
                      <input type="password" name="password" class="form-control" id="password" required>
                        <div class="valid-feedback">올바른 비밀번호 입니다.</div>
                        <div class="invalid-feedback">영문, 숫자, 특수문자가 포함된 8~25자리 비밀번호를 입력하세요</div>
                    </div>
                    
                    <div class="col-12" id="repassword-box">
                      <label for="repassword" class="form-label">비밀번호 재입력</label>
                      <input type="password" name="repassword" class="form-control" id="repassword" required>
                        <div class="valid-feedback">비밀번호가 일치합니다.</div>
                        <div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
                    </div>
                    
                    <div class="col-12" id="name-box">
                      <label for="name" class="form-label">이름</label>
                      <div class="input-group has-validation">
                        <input type="text" name="name" class="form-control" id="name" required>
                        <div class="valid-feedback">올바른 이름 입니다.</div>
                        <div class="invalid-feedback">한글로 이루어진 1~20자리 이름을 입력하세요</div>
                      </div>
                    </div>
                    
                    <div class="col-12" id="phone-box">
                      <label for="phone" class="form-label">휴대전화</label>
                      <div class="input-group has-validation">
                        <input type="text" name="phone" class="form-control" id="phone" required>
                        <div class="valid-feedback">올바른 휴대전화번호 입니다.</div>
                        <div class="invalid-feedback">9~11 자리 숫자를 입력하세요. ( - 제외)</div>
                      </div>
                    </div>
                    
                    <div class="col-12" id="email-box">
                      <label for="email" class="form-label">e-mail</label>
                      <div class="input-group has-validation">
                        <input type="text" name="email" class="form-control" id="email" required>
                        <div class="valid-feedback">올바른 이메일 입니다.</div>
                        <div class="invalid-feedback">이메일 형식에 맞춰서 입력하세요</div>
                      </div>
                    </div>
					
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">제출</button>
                    </div>
                    <div class="invalid-feedback" id="fianlChk">올바른 형식의 회원 정보를 입력하세요</div>
                  </form>
				
                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/vendor/quill/quill.min.js"></script>
  <script src="/resources/vendor/php-email-form/validate.js"></script>

  <!-- MY JS File -->
  <script src="/resources/js/validation.js"></script>

</body>
</html>
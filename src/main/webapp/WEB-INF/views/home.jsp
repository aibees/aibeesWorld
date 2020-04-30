<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>AIBEES WORLD</title>

  <!-- Font Awesome Icons -->
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

  <!-- Plugin CSS -->
  <link href="resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Theme CSS - Includes Bootstrap -->
  <link href="resources/css/creative.css" rel="stylesheet">

  <script>
  	function logout_chk() {
	  const logoutCheck = confirm("로그아웃 하시겠습니까")
	  if(logoutCheck) {
		  window.location.href="logout.do"
	  }
  }
  </script>

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"><img id="letterLogo" src="/resources/img/homeLetterLogo.png" /></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
          <li class="nav-item">
          	<c:choose>
          	<c:when test="${loginUser != null }">
            	<a id="logoutA" class="nav-link" href="#" onClick="logout_chk()">Logout</a>
            </c:when>
            <c:otherwise>
            	<a class="nav-link" href="loginForm.do">Login</a>
            </c:otherwise>
            </c:choose>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold">Welcome to My World</h1>
          <br/>
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-75 font-weight-light mb-5">Grow little by little with constant effort.</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">사이트 둘러보기</a>
        </div>
      </div>
    </div>
  </header>

  <!-- About Section -->
  <section class="page-section bg-primary h-100" id="about">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="text-white mt-0">저를 소개합니다.</h2>
          <hr class="divider light my-4">
          <p class="text-white-50 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
          <a class="btn btn-light btn-xl js-scroll-trigger" href="https://aibees.github.io/about">GO TO ABOUT</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Services Section -->
  <section class="page-section h-100" id="services">
    <div class="container">
      <h2 class="text-center mt-0">AIBEES 서비스!</h2>
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
            <h3 class="h4 mb-2">STUDY 하우스</h3>
            <p class="text-muted mb-0">제가 작업하는 것들을<br/>보여드립니다</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
            <h3 class="h4 mb-2">Up to Date</h3>
            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
            <h3 class="h4 mb-2">일상이야기</h3>
            <p class="text-muted mb-0">전자기기를 벗어난 활동들을<br/>기록하는 공간</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a href="/private.do"><i class="fas fa-4x fa-heart text-primary mb-4"></i></a>
            <h3 class="h4 mb-2">개인 페이지</h3>
            <p class="text-muted mb-0">저의 사적인 공간입니다.<br/>일기일 수도 있고 연애일수도 있고?</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Portfolio Section -->
  <section id="portfolio">
  	<div class="portfolio-title">
  		<h1 class="title-container">AB MAIN PROJECT</h1>
  	</div>
    <div class="container-fluid p-0">
      <div class="row no-gutters">
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/1.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/1.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Game :: Cocos2d-X
              </div>
              <div class="project-name">
                Don't Chase Me
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/2.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/2.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Web :: React.js + Node.js
              </div>
              <div class="project-name">
                OctopusFantasy
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/3.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/3.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                App :: Android
              </div>
              <div class="project-name">
                What Shall We Do
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/4.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/4.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Application Software :: Java
              </div>
              <div class="project-name">
                Streaming Platform
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/5.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/5.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Distribute Server :: scala Spark
              </div>
              <div class="project-name">
                Log Analysis
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="/resources/img/portfolio/fullsize/6.jpg">
            <img class="img-fluid" src="/resources/img/portfolio/thumbnails/6.jpg" alt="">
            <div class="portfolio-box-caption p-3">
              <div class="project-category text-white-50">
                What's next?
              </div>
              <div class="project-name">
                Coming Soon
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact Section -->
  <section class="page-section h-100" id="contact">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="mt-0">Contacts<br/>&<br/>Personal Sites</h2>
          <hr class="divider my-4">
          <p class="text-muted mb-5">If you want to <b>contact me</b> or want to <b>visit my personal page</b>, please use the link below.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
          <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
          <div style="color:#cdcdcd;">aibees1129@gmail.com</div>
        </div>
        <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
          <a href="http://aibees.github.io">
          	<i class="fas fa-blog fa-3x mb-3 text-muted"></i>
          </a>
          <a class="d-block" href="http://aibees.github.io">Aibees Dev Blog</a>
        </div>
        <div class="col-lg-4 mr-auto text-center">
          <a href="https://github.com/aibees">
          	<i class="fab fa-github fa-3x mb-3 text-muted"></i>
          </a>
          <a class="d-block" href="https://github.com/aibees">aibees@github.com</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-light py-5">
    <div class="container">
      <div class="small text-center text-muted">Copyright &copy; 2019-2020 Aibees World. All rights reserved</div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="resources/vendor/magnific-popup/jquery.magnific-popup.js"></script>

  <!-- Custom scripts for this template -->
  <script src="resources/js/creative.js"></script>

</body>

</html>

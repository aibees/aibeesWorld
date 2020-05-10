<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AB WORLD : PRIVATE</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="/resources/dist/js/pageCommon.js"></script>
    
    <style>
    a {
    	text-decoration: none;
    }
    </style>
  </head>
    
  <body class="skin-blue sidebar-mini">
    <div class="wrapper">
      
      <header class="main-header">
        <a href="/private.do" class="logo">
          <span class="logo-lg">
          	<b>연애</b>를 합시다
          </span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">네비게이션</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <%-- <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
              </li>
              
              <!-- Notifications: style can be found in dropdown.less -->
<!--               <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    inner menu: contains the actual data
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li> -->
              <!-- Tasks: style can be found in dropdown.less -->
<!--               <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    inner menu: contains the actual data
                    <ul class="menu">
                      <li>Task item
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li>end task item
                      <li>Task item
                        <a href="#">
                          <h3>
                            Create a nice theme
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">40% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li>end task item
                      <li>Task item
                        <a href="#">
                          <h3>
                            Some task I need to do
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">60% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li>end task item
                      <li>Task item
                        <a href="#">
                          <h3>
                            Make beautiful transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li>end task item
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li> -->
              
              
              <!-- sing in add -->
              <c:if test="${loginUser == null }">
              <li>
              	<a href="/loginForm.do">
              		<i class="fa fa-sign-in" aria-hidden="true"></i>
              	</a>
              </li>
              </c:if>
              <c:if test="${loginUser != null }">
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="/resources/img/${loginUser.imgSrc }" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">${loginUser.name }</span>
                </a>
                <ul class="dropdown-menu">
                  
                  <li class="user-header">
                    <img src="/resources/img/${loginUser.imgSrc }" class="img-circle" alt="User Image" />
                    <p>
                      Alexander Pierce - Web Developer
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  
<!--                   <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li> -->
                  
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="/user/logout.do" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              </c:if>
              
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
              
              <!-- home add -->
              <li>
              	<a href="#" data-toggle="control-sidebar">
              		<i class="fa fa-home" aria-hidden="true"></i>
              	</a>
              </li>
              
              
            </ul>
          </div> --%>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <c:if test="${loginUser != null }">
            <div class="pull-left info">
              <p>${loginUser.name }님이<br/>접속 중입니다</p>
            </div>
 			</c:if> 
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="treeview">
              <a href="#">
                <i class="fa fa-heart"></i> <span>다이어리</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <%-- 
                <li><a href="/board/listAll"><i class="fa fa-circle-o"></i> Dashboard v1</a></li> 
                <li><a href="/board/listCri"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
                --%>
                <li><a id="diary_1" href="/private/diary.do" onClick="setMenuTitle($(this).attr('id'))"><i class="fa fa-clipboard" aria-hidden="true"></i>TO. 다니</a></li>
                <li><a id="diary_1" href="/private/diary.do" onClick="setMenuTitle($(this).attr('id'))"><i class="fa fa-clipboard" aria-hidden="true"></i>TO. 준서</a></li>
                <li><a id="diary_2" href="/private/imgDiary.do" onClick="setMenuTitle($(this).attr('id'))"><i class="fa fa-circle-o"></i>사진일기</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>게시판</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a id="dash_1" href="../layout/top-nav.html"><i class="fa fa-circle-o"></i>메모</a></li>
                <li><a id="dash_2" href="../layout/boxed.html"><i class="fa fa-circle-o"></i>공지</a></li>
                <li><a id="dash_3" href="../layout/fixed.html"><i class="fa fa-circle-o"></i>하고싶은 말</a></li>
                <li><a id="dash_4" href="../layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i>유우머</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Love Charts</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="/charts/chartjs.sinc"><i class="fa fa-circle-o"></i> ChartJS</a></li>
                <li><a href="../charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
                <li><a href="../charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
                <li><a href="../charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
              </ul>
            </li>
            <li>
              <a href="../calendar.html">
                <i class="fa fa-calendar"></i> <span>스케쥴 공유</span>
                <!-- <small class="label pull-right bg-red">3</small> -->
              </a>
            </li><!-- 
            <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>Multilevel</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                      <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
              </ul>
            </li> -->
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <span id="menuname_header">메인 페이지</span>
            <small id="menuname_header_small">미리보기</small>
          </h1>
        </section>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ include file="/WEB-INF/jsp/include/taglibs_include.jsp" %>
<%@ include file="/WEB-INF/jsp/include/server_variables.jsp" %>
<%@ include file="/WEB-INF/jsp/include/js_variables.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <title>Metis</title>

    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-TileColor" content="#5bc0de">
    <meta name="msapplication-TileImage" content="${contextPath}/assets/img/metis-tile.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${contextPath}/assets/lib/bootstrap/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${contextPath}/assets/lib/Font-Awesome/css/font-awesome.min.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="${contextPath}/assets/css/main.min.css">
    <link rel="stylesheet" href="${contextPath}/assets/css/theme.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
      <script src="assets/lib/html5shiv/html5shiv.js"></script>
	      <script src="assets/lib/respond/respond.min.js"></script>
	    <![endif]-->

    <!--Modernizr 3.0-->
    <script src="${contextPath}/assets/lib/modernizr-build.min.js"></script>
  </head>
  <body>
    <div id="wrap">
      <div id="top">

        <!-- .navbar -->
        <nav class="navbar navbar-inverse navbar-static-top">

          <!-- Brand and toggle get grouped for better mobile display -->
          <header class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span> 
              <span class="icon-bar"></span> 
              <span class="icon-bar"></span> 
              <span class="icon-bar"></span> 
            </button>
            <a href="index.html" class="navbar-brand">
              <img src="${contextPath}/assets/img/logo.png" alt="">
            </a> 
          </header>
          <div class="topnav">
            <div class="btn-toolbar">
              <div class="btn-group">
                <a href="login.html" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom" class="btn btn-metis-1 btn-sm">
                  <i class="fa fa-power-off"></i>
                </a> 
              </div>
            </div>
          </div><!-- /.topnav -->
          
        </nav><!-- /.navbar -->

        <!-- header.head -->
        <header class="head">
          <div class="search-bar">
            <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs visible-sm" id="menu-toggle">
              <i class="fa fa-bars"></i>
            </a> 
            <form class="main-search">
              <div class="input-group">
                <input type="text" class="input-small form-control" placeholder="Live Search ...">
                <span class="input-group-btn">
                                    <button class="btn btn-primary btn-sm text-muted" type="button"><i class="fa fa-search"></i></button>
                                </span> 
              </div>
            </form>
          </div>

          <!-- ."main-bar -->
          <div class="main-bar">
            <h3>
              <i class="fa fa-home"></i>Thông tin tài Khoản</h3>
          </div><!-- /.main-bar -->
        </header>

        <!-- end header.head -->
      </div><!-- /#top -->
      <div id="left">
        <div class="media user-media">
          <div class="user-media-toggleHover">
            <span class="fa fa-user"></span> 
          </div>
          <div class="user-wrapper">
            <a class="user-link" href="">
              <img class="media-object img-thumbnail user-img" alt="User Picture" src="${contextPath}/assets/img/user.gif">
              <span class="label label-danger user-label">16</span> 
            </a> 
            <div class="media-body">
              <h5 class="media-heading">Archie</h5>
              <ul class="list-unstyled user-info">
                <li> <a href="">Administrator</a>  </li>
                <li>Last Access :
                  <br>
                  <small>
                    <i class="fa fa-calendar"></i>&nbsp;16 Mar 16:32</small> 
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!-- #menu -->
        <ul id="menu" class="">
          <li class="nav-header">Menu</li>
          <li class="nav-divider"></li>
          <li class="">
            <a href="javascript:;">
              <i class="fa fa-cog"></i>
              <span class="link-title">Quản Lý Tài Khoản</span> 
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li class="">
                <a href="dashboard.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Quản Lý Thông Tin Cá Nhân
                </a> 
              </li>
              <li class="">
                <a href="alterne.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Quản lý nhân viên
                </a>
					<ul>
              			<li class="">
                		<a href="dashboard.html">
                  		<i class="fa fa-angle-right"></i>&nbsp;Thông Tin Nhân viên
                		</a> 
					  </li>
					  <li class="">
						<a href="alterne.html">
						  <i class="fa fa-angle-right"></i>&nbsp;Thêm nhân viên
						</a> 
					  </li>
					  <li> 
						<a href="javascript:;">
							<i class="fa fa-angle-right"></i>&nbsp;Sữa nhân viên
						</a>  
					  </li>
		
					</ul>
				   
              </li>
			  <li> 
			  	<a href="javascript:;">
			  		<i class="fa fa-angle-right"></i>&nbsp;Quản lý người dùng
				</a>  
			  </li>

            </ul>
          </li>
          <li class="">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span class="link-title">
              Quản Lý Xe
            </span> 
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li class="">
                <a href="icon.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Xe Đang Thuê</a> 
              </li>
              <li class="">
                <a href="button.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Xem Hãng xe</a> 
              </li>
              <li class="">
                <a href="progress.html">
                  <i class="fa fa-angle-right"></i>&nbsp;xem xe chưa thuê</a> 
              </li>
           
              <li class="">
                <a href="bgcolor.html">
                  <i class="fa fa-angle-right"></i>&nbsp;xem lịch đặt xe thuê</a> 
              </li>
            </ul>
          </li>
          
          <li class="nav-divider"></li>
          <li>
            <a href="login.html">
              <i class="fa fa-sign-in"></i>
              <span class="link-title">
    Login Page
    </span> 
            </a> 
          </li>
          <li>
            <a href="javascript:;">
              <i class="fa fa-code"></i>
              <span class="link-title">
    	Unlimited Level Menu 
    	</span> 
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li>
                <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a> 
                <ul>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li>
                    <a href="javascript:;">Level 2  <span class="fa arrow"></span>  </a> 
                    <ul>
                      <li> <a href="javascript:;">Level 3</a>  </li>
                      <li> <a href="javascript:;">Level 3</a>  </li>
                      <li>
                        <a href="javascript:;">Level 3  <span class="fa arrow"></span>  </a> 
                        <ul>
                          <li> <a href="javascript:;">Level 4</a>  </li>
                          <li> <a href="javascript:;">Level 4</a>  </li>
                          <li>
                            <a href="javascript:;">Level 4  <span class="fa arrow"></span>  </a> 
                            <ul>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li> <a href="javascript:;">Level 4</a>  </li>
                    </ul>
                  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                </ul>
              </li>
              <li> <a href="javascript:;">Level 1</a>  </li>
              <li>
                <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a> 
                <ul>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul><!-- /#menu -->
      </div><!-- /#left -->
      <div id="content">
     
        <div class="outer">
        <decorator:body></decorator:body>
          <div class="inner">
            <div class="col-lg-12">
           
            
            <a href="${pageContext.request.contextPath }/login/sign_in.jv">Login</a>
            
			</div>
          </div>

          <!-- end .inner -->
        </div>

        <!-- end .outer -->
      </div>

      <!-- end #content -->
    </div><!-- /#wrap -->
    <div id="footer">
      <p>2014 &copy; LÊ VĂN CHƯƠNG</p>
    </div>

    <!-- #helpModal -->
    <!-- /.modal --><!-- /#helpModal -->
    <script src="${contextPath}/assets/lib/jquery.min.js"></script>
    <script src="${contextPath}/assets/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${contextPath}/assets/lib/screenfull/screenfull.js"></script>
    <script src="${contextPath}/assets/js/main.min.js"></script>

    <!--For Demo Only. Not required -->
    
  </body>
</html>
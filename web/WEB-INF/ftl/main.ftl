<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>主页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<#import "/spring.ftl" as spring />
    <!-- Le styles -->
    <link href="<@spring.url '/asserts/css/bootstrap.min.css'/>" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
  
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
      <!-- Fav and touch icons -->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
             	 登陆用户为： <a href="#" class="navbar-link">${user.username}</a>
            </p>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="col-md-2">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">功能列表</li>
              <li>
              	<a href="./seatransport">海运模块</a>
              </li>
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="col-md-10">
          <div class="hero-unit">
            <h1>欢迎使用该软件，请于左边选择功能模块</h1>
          </div>
          <div/>
      <hr>
		
      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div><!--/.fluid-container-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	    <script src="<@spring.url '/asserts/js/bootstrap-transition.js'/>"</script>
	    <script src="<@spring.url '/asserts/js/angular.min.js'/>"</script>
  </body>
</html>

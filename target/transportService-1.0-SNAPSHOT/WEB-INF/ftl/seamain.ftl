<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>海运模块</title>
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
             	 登陆名为<a href="#" class="navbar-link">${username}</a>
            </p>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="col-lg-2">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">功能模块</li>
              <li class="active">
              	<a href="./seatransport">海运模块</a>
              </li>
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="col-lg-10">
          <div class="hero-unit">
            <h1>海运模块</h1>
          </div>
          <div/>
          <div id="content">
          <table class="table table-condensed">
          	<tr>
          		<th>#</th>
          		<th>操作信息</th>
          		<th>提单号</th>
          		<th>操作日期</th>
          		<th>箱型箱量</th>
          		<th>委托日期</th>
          		<th>体积</th>
          		<th>毛重</th>
          		<th>件数</th>
          		<th>核销单号</th>
          	</tr>
          	 <#list tasks as task>
    			<tr id="task_${task.id}">
	          		<td>${task_index}</td>
	          		<td>${task.workingNumber}</td>
	          		<td>${task.missionNumber}</td>
	          		<td>${task.lastOperationTime}</td>
	          		<td>${task.missionOrganisation}</td>
	          		<td>${task.createTime}</td>
	          		<td>${task.volumn}</td>
	          		<td>${task.grossWeight}</td>
	          		<td>${task.packageCount}</td>
	          		<td>${task.confirmNumber}</td>
          		</tr>
  			</#list> 
  			 </table>
  			 <a href="/seatransport/add#mission" class="btn btn-large btn-primary">添加新任务</a>
          </div>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div><!--/.fluid-container-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="<@spring.url '/asserts/js/bootstrap-transition.js'/>"</script>
  </body>
</html>

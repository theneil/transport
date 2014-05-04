<html lang="en">
<head>
    <meta charset="utf-8">
    <title>海运模块</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<#import "/spring.ftl" as spring />
    <!-- Le styles -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="<@spring.url '/asserts/js/bootstrap.min.js'/>"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script>
        $(function() {
            $( ".datepicker" ).datepicker();

        });
    </script>
    <link href="<@spring.url '/asserts/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <style type="text/css">
        body {
            padding-top: 60px;
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }

        .textarea {
            height: 75px;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }

        .container-fluid {
            padding: 0px;
        }

    </style>

</head>
<!--Model-->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Content for the dialog / modal goes here.
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
    </div>
</div>

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
                    登陆姓名<a href="#" class="navbar-link">admin</a>
                </p>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="col-md-2">
        <div class="well sidebar-nav">
            <ul class="nav nav-list">
                <li class="nav-header">功能模块</li>
                <li class="active">
                    <a href="/seatransport">海运模块</a>
                </li>

            </ul>
        </div>
        <!--/.well -->
    </div>
    <!--/span-->
    <div class="col-md-10">
        <div class="well well-sm">
            <h3><span class="label label-success">海运模块</span>
                <button type="submit" class="btn btn-default">新增</button>
            </h3>
        </div>
        <div id="content">
            <form class="form-horizontal" action="./create" method="post">
            <div class="form-group">
                <ul class="nav nav-tabs col-md-12">
                    <li class="active"><a href="#mission" data-toggle="tab">委托信息</a></li>
                    <li><a href="#contact" data-toggle="tab">联系人信息</a></li>
                    <li><a href="#inventory" data-toggle="tab">仓储运输</a></li>
                </ul>
                <br/>
                <div class="tab-content">
                <div class="tab-pane fade active in" id="mission">
                    <div class="col-md-12">
                        <br/>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">委托信息</div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span class="label label-primary">任务编号</span>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="col-md-6">
                                            <span class="label label-primary">委托编号</span>
                                            <input type="text" class="form-control"/>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <span class="label label-primary">委托单位</span>
                                            <div class="input-group">
                                                <input type="text" class="form-control"/>
                                                <span class="input-group-btn">
                                                     <a href="#myModal" role="button" class="btn btn-primary" data-toggle="modal">查找</a>
                                                </span>

                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span class="label label-primary">委托人</span>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="col-md-6">
                                            <span class="label label-primary">委托人电话</span>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span class="label label-primary">合同号</span>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="col-md-6">
                                            <span class="label label-primary">订舱号</span>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span class="label label-primary">HBL/NO</span>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="col-md-6">
                                            <span class="label label-primary">受委托人</span>
                                        <@spring.formSingleSelect "task.workingNumber" , userList , "class='form-control'"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">货物信息</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <span class="label label-primary">件数</span>
                                        <input type="text" class="form-control" />
                                    </div>
                                    <div class="col-md-6">
                                        <span class="label label-primary">毛重</span>
                                        <div class="input-group">
                                            <input type="text" class="form-control"/>
                                            <span class="input-group-addon">KG &nbsp;</span>
                                        </div>
                                    </div>
                                </div>
                                <br/>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span class="label label-primary">计费重量</span>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="col-md-6">
                                        <span class="label label-primary">体积</span>
                                        <div class="input-group">
                                            <input type="text" class="form-control" />
                                            <span class="input-group-addon">CBM</span>
                                        </div>
                                    </div>
                                </div>
                                <br/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <span class="label label-primary">总计描述</span>
                                        <input type="text" class="form-control"/>
                                    </div>
                                </div>
                                <br/>

                                <div class="row">
                                    <div class="col-md-6">
                                        <span class="label label-primary">货物描述</span>
                                        <textarea class="form-control col-md-12"> </textarea>
                                    </div>
                                    <div class="col-md-6">
                                        <span class="label label-primary">货物描述2</span>
                                        <textarea class="form-control col-md-12" ></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="contact">

                    <div class="col-md-12">
                        <br/>
                        <div class="panel panel-default ">
                            <div class="panel-heading">联系信息</div>
                            <div class="panel-body">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="inventory">
                    <br/>
                    <ul class="nav nav-tabs col-md-12">
                        <li class="active"><a href="#booking" data-toggle="tab">订舱信息</a></li>
                        <li><a href="#package" data-toggle="tab">做箱信息</a></li>
                        <li><a href="#other" data-toggle="tab">其他信息</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content col-md-12">
                        <div class="tab-pane fade active in" id="booking">
                            <div class="row">
                                <br/>
                            <div class="col-md-3">
                                <span class="label label-primary">MBL/NO</span>
                                <input type="text" class="form-control"/>
                            </div>
                            <div class="col-md-3">
                                <span class="label label-primary">订舱代理</span>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="col-md-3">
                                <span class="label label-primary">船公司</span>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="col-md-3">
                                <span class="label label-primary">起航日期</span>
                                <input type="text" class="form-control datepicker" />
                            </div>
                        </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-3">
                                    <span class="label label-primary">航名航次</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">预计到达</span>
                                    <input type="text" class="form-control datepicker" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">起运港</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">中转港</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane fade" id="package">
                            <br/>
                            <div class="row">
                                <div class="col-md-4">
                                    <span class="label label-primary">仓库</span>
                                    <input type="text" class="form-control"/>
                                </div>
                                <div class="col-md-4">
                                    <span class="label label-primary">仓库地址</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">联系人</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">联系方式</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-3">
                                    <span class="label label-primary">进仓日期</span>
                                    <input type="text" class="form-control datepicker" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">装箱日期</span>
                                    <input type="text" class="form-control datepicker" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">出库日期</span>
                                    <input type="text" class="form-control datepicker" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">进仓编号</span>
                                    <input type="text" class="form-control"/>
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-4">
                                    <span class="label label-primary">车队</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <span class="label label-primary">门店地址</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">联系人</span>
                                    <input type="text" class="form-control"/>
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">联系电话</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-4">
                                    <span class="label label-primary">报关行</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <span class="label label-primary">报关地址</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">截关日期</span>
                                    <input type="text" class="form-control datepicker"/>
                                </div>
                                <div class="col-md-2">
                                    <span class="label label-primary">报关编码</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="other">
                            <br/>
                            <div class="row">
                                <div class="col-md-2">
                                    <span class="label label-primary">运输条款</span>
                                    <@spring.formSingleSelect "task.workingNumber" , userList , "class='form-control'"/>
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">运费条款</span>
                                    <@spring.formSingleSelect "task.workingNumber" , userList , "class='form-control'"/>
                                </div>
                                <div class="col-md-4">
                                    <span class="label label-primary">操作信息</span>
                                    <input type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">结算说明</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-3">
                                    <span class="label label-primary">成交方式</span>
                                <@spring.formSingleSelect "task.workingNumber" , userList , "class='form-control'"/>
                                </div>
                                <div class="col-md-3">
                                    <span class="label label-primary">销售员部门</span>
                                    <input type="text" class="form-control"/>
                                </div>
                                <div class="col-md-6">
                                    <span class="label label-primary">备注</span>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <br/>
                            <div class="row">
                                <div class="col-md-3">
                                    <span class="label label-primary">提单类型</span>
                                <@spring.formSingleSelect "task.workingNumber" , userList , "class='form-control'"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </form>
        </div>
        <div class="footer navbar-fixed-bottom text-center">
            <p>&copy; Company 2013</p>
        </div>

    </div>
    <!--/.fluid-container-->


</body>
</html>

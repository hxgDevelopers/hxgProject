<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgEndUserManage.aspx.cs" Inherits="hxg.hxgEndUserManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>后台-用户管理</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fullcalendar.css" />	
	<link rel="stylesheet" href="css/unicorn.main.css" />
	<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
</head>
<body>
    <div id="header">
        <h1><a href="#">Admin</a></h1>
    </div>

    <div id="search">
        <!--        <input type="text" placeholder="Seach here....."/>
        <button type="submit" class="tip-right" title="Search"><i class="glyphicon glyphicon-search glyphicon-white"></i></button>-->
    </div>

    <div id="user-nav">
        <nav class="navbar">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Page 1-1</a></li>
                            <li><a href="#">Page 1-2</a></li>
                            <li><a href="#">Page 1-3</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Page 2</a></li>
                    <li><a href="#">Page 3</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                </ul>
            </div>
        </nav>
    </div>

    <div id="sidebar">
        <a href="#"></a>
        <ul class="nav nav-stacked">
            <li class="active"><a href="#"><i class="glyphicon glyphicon-magnet"></i><span>用户管理</span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-calendar"></i><span>任务发布</span></a></li>
        </ul>
    </div>
    <div id="content">
        <div id="content-header">
            <h1>用户管理</h1>
            <div class="btn-group">
                <a class="btn btn-lg btn-default" title="Manage Files"><i class="glyphicon glyphicon-file"></i></a>
                <a class="btn btn-lg btn-default" title="Manage Users"><i class="glyphicon glyphicon-user"></i></a>
                <a class="btn btn-lg btn-default" title="Manage Comments"><i class="glyphicon glyphicon-comment"></i><span class="label label-important">5</span></a>
                <a class="btn btn-lg btn-default" title="Manage Orders"><i class="glyphicon glyphicon-shopping-cart"></i></a>
            </div>
        </div>
        <div id="breadcrumb">
            <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>主界面</a>
            <a href="#" class="current">用户管理</a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="widget-box">
                        <div class="widget-title" style="text-align: center">
                            <h5>用户列表</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
                                <asp:Repeater runat="server" ID="userRepeat">
                                    <HeaderTemplate>
                                       <table class="table table-bordered table-striped table-hover data-table dataTable" id="DataTables_Table_0">
                                            <thead>
                                                <tr role="row">
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 313px;">
                                                        <div class="DataTables_sort_wrapper">ID<span class="DataTables_sort_icon css_right ui-icon ui-icon-triangle-1-n"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 507px;">
                                                        <div class="DataTables_sort_wrapper">登录名称<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 468px;">
                                                        <div class="DataTables_sort_wrapper">登录密码(s)<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 273px;">
                                                        <div class="DataTables_sort_wrapper">昵称<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 313px;">
                                                        <div class="DataTables_sort_wrapper">类型<span class="DataTables_sort_icon css_right ui-icon ui-icon-triangle-1-n"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 507px;">
                                                        <div class="DataTables_sort_wrapper">年龄<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 468px;">
                                                        <div class="DataTables_sort_wrapper">性别<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 273px;">
                                                        <div class="DataTables_sort_wrapper">头像<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 273px;">
                                                        <div class="DataTables_sort_wrapper">分数<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 313px;">
                                                        <div class="DataTables_sort_wrapper">家长密码<span class="DataTables_sort_icon css_right ui-icon ui-icon-triangle-1-n"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 507px;">
                                                        <div class="DataTables_sort_wrapper">激活<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 468px;">
                                                        <div class="DataTables_sort_wrapper">创建时间<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                    <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 273px;">
                                                        <div class="DataTables_sort_wrapper">修改时间<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
                                                    </th>
                                                </tr>
                                            </thead>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                                            <tr class="gradeA odd">
                                                <td><%#Eval("US_ID") %></td>
                                                <td><%#Eval("US_LOGNAME") %></td>
                                                <td><%#Eval("US_PASSWORD") %></td>
                                                <td><%#Eval("US_NICKNAME") %></td>
                                                <td><%#Eval("US_TYPE") %></td>
                                                <td><%#Eval("US_AGE") %></td>
                                                <td><%#Eval("US_GENDER") %></td>
                                                <td><%#Eval("US_LOGO") %></td>
                                                <td><%#Eval("US_SCORE") %></td>
                                                <td><%#Eval("US_PARENTSPSWD") %></td>
                                                <td><%#Eval("ISACTIVE") %></td>
                                                <td><%#Eval("CREATETIME") %></td>
                                                <td><%#Eval("LASTUPDATETIME") %></td>
                                            </tr>      
                                        </tbody>                           
                                    </ItemTemplate>
                                    <FooterTemplate> 
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                                <div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">
                                    <div class="dataTables_filter" id="DataTables_Table_0_filter">
                                        <label>
                                            Search:<input type="text" aria-controls="DataTables_Table_0">
                                        </label>
                                    </div>
                                    <div class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers" id="DataTables_Table_0_paginate"><a tabindex="0" class="first ui-corner-tl ui-corner-bl fg-button ui-button ui-state-default ui-state-disabled" id="DataTables_Table_0_first">First</a><a tabindex="0" class="previous fg-button ui-button ui-state-default ui-state-disabled" id="DataTables_Table_0_previous">Previous</a><span><a tabindex="0" class="fg-button ui-button ui-state-default ui-state-disabled">1</a><a tabindex="0" class="fg-button ui-button ui-state-default">2</a><a tabindex="0" class="fg-button ui-button ui-state-default">3</a><a tabindex="0" class="fg-button ui-button ui-state-default">4</a><a tabindex="0" class="fg-button ui-button ui-state-default">5</a></span><a tabindex="0" class="next fg-button ui-button ui-state-default" id="DataTables_Table_0_next">Next</a><a tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default" id="DataTables_Table_0_last">Last</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/excanvas.min.js"></script>
    <script src="js/jquery.ui.custom.js"></script>
    <script src="js/jquery.flot.min.js"></script>
    <script src="js/jquery.flot.resize.min.js"></script>
    <script src="js/jquery.peity.min.js"></script>
    <script src="js/fullcalendar.min.js"></script>
    <script src="js/unicorn.js"></script>
    <script src="js/unicorn.dashboard.js"></script>
</body>
</html>

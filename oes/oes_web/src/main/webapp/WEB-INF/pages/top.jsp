<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="oes.global.Contant" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title> OES </title>

    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="/assets/img/favicon.ico">
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="/self">
                <b>在线考试</b>OES
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="/assets/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.presonnel.name} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="/to_change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/quit" class="">
                            <span class="fa fa-power-off pr5"> 退出 </span></a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="/assets/img/avatars/3.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">${sessionScope.presonnel.name}---${sessionScope.presonnel.roles}</div>
                            <div class="media-links">
                                <a href="/quit">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt20">考试管理</li>

                <li class="active">
                    <a href="/exam/to_test">
                        <span class="glyphicon glyphicon-home"></span>
                        <span class="sidebar-title">开始考试</span>
                    </a>
                </li>
                <li>
                    <a href="/my_exam/list">
                        <span class="fa fa-calendar"></span>
                        <span class="sidebar-title">我的考试</span>
                    </a>
                </li>
                <c:if test="${sessionScope.presonnel.roles==Contant.ROLES_TEACHER||sessionScope.presonnel.roles==Contant.ROLES_ADMIN}">
                    <li class="sidebar-label pt15">基础信息管理</li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="glyphicon glyphicon-check"></span>
                            <span class="sidebar-title">学生管理</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="nav sub-nav">
                            <li>
                                <a href="/presonnel/list">
                                    <span class="glyphicon glyphicon-calendar"></span> 所有学生 </a>
                            </li>
                            <li class="active">
                                <a href="/presonnel/to_add">
                                    <span class="glyphicon glyphicon-check"></span> 添加学生 </a>
                            </li>
                        </ul>
                    </li>
                    <c:if test="${sessionScope.presonnel.roles==Contant.ROLES_TEACHER}">
                        <li>
                            <a class="accordion-toggle" href="#">
                                <span class="fa fa-columns"></span>
                                <span class="sidebar-title">考试管理</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="nav sub-nav">
                                <li>
                                    <a href="/mark/list">
                                        <span class="glyphicon glyphicon-calendar"></span> 考试阅卷 </a>
                                </li>
                                <li class="active">
                                    <a href="/mark/result">
                                        <span class="glyphicon glyphicon-check"></span> 阅卷结果 </a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                        <li>
                            <a class="accordion-toggle" href="#">
                                <span class="fa fa-columns"></span>
                                <span class="sidebar-title">题库管理</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="nav sub-nav">
                                <li>
                                    <a href="/bank/list">
                                        <span class="glyphicon glyphicon-calendar"></span> 所有试题 </a>
                                </li>
                                <li class="active">
                                    <a href="/bank/to_option_add">
                                        <span class="glyphicon glyphicon-check"></span> 添加客观题 </a>
                                </li>
                                <li class="active">
                                    <a href="/bank/to_sub_add">
                                        <span class="glyphicon glyphicon-check"></span> 添加主观题 </a>
                                </li>
                            </ul>
                        </li>
                </c:if>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>在线考试OES</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
</head>
<body class="external-page external-alt sb-l-c sb-r-c">
<div id="main" class="animated fadeIn">
    <section id="content_wrapper">
        <section id="content">
            <div class="admin-form theme-info mw500" id="login">
                <div class="content-header">
                    <h1> 在线考试OES</h1>
                    <p class="lead">欢迎使用在线考试系统</p>
                </div>
                <div class="panel mt30 mb25">
                    <form method="post" action="login" id="contact">
                        <div class="panel-body bg-light p25 pb15">
                            <div class="section">
                                <label for="number" class="field-label text-muted fs18 mb10">学号或工号</label>
                                <label for="number" class="field prepend-icon">
                                    <input type="text" name="number" id="number" class="gui-input" placeholder="请输入学号或工号..." value="1102">
                                    <label for="number" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="password" class="field-label text-muted fs18 mb10">密码</label>
                                <label for="password" class="field prepend-icon">
                                    <input type="password" name="password" id="password" class="gui-input" placeholder="请输入密码..." value="000000">
                                    <label for="password" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="panel-footer clearfix">
                            <button type="submit" class="button btn-primary mr10 pull-right">登陆</button>
                            <label class="switch ib switch-primary mt10">
                                <input type="checkbox" name="remember" id="remember" checked="true">
                                <label for="remember" data-on="是" data-off="否"></label>
                                <span>记住我</span>
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <p>老师账号:1101&nbsp;&nbsp;&nbsp;&nbsp;密码:000000</p>
                    <p>学生账号:1102&nbsp;&nbsp;&nbsp;&nbsp;密码:000000</p>
                </div>
            </div>
        </section>
    </section>
</div>
<script src="vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>

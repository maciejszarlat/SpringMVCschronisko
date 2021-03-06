<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link href="<c:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="<c:url value="/resources/bower_components/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
    <!-- Ionicons -->
    <link href="<c:url value="/resources/bower_components/Ionicons/css/ionicons.min.css" />" rel="stylesheet">
    <!-- Theme style -->
    <link href="<c:url value="/resources/dist/css/AdminLTE.min.css" />" rel="stylesheet">
    <!-- iCheck -->
    <link href="<c:url value="/resources/plugins/iCheck/square/blue.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/dist/css/skins/_all-skins.min.css" />" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>Admin</b>LTE</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Zaloguj się</p>

        <form action="${pageContext.request.contextPath}/authenticateTheUser"
              method="POST">
            <c:if test="${confirmation != null}">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <div class="alert alert-success alert-dismissible">
                            ${confirmation}
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <div class="alert alert-success alert-dismissible">
                            Wylogowano z serwisu.
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${param.error != null}">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <div class="alert alert-danger alert-dismissible">
                            Błedy e-mail lub hasło.
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="Email" name="username">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Zaloguj</button>
                </div>
                <!-- /.col -->
            </div>

            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>


        <a href="#">Zapomniałem hasła</a><br>
        <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="text-center">Rejestracja</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<c:url value="/resources/bower_components/jquery/dist/jquery.min.js" />"></script>

<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js" />"></script>
<!-- iCheck -->
<script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
</body>
</html>

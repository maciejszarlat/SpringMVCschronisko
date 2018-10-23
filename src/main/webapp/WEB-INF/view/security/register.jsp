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
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="../../index2.html"><b>Admin</b>LTE</a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Zarejestruj swoje schronisko</p>
        <!-- Check for registration error -->

        <form:form action="${pageContext.request.contextPath}/register/processRegistrationForm"
                   modelAttribute="crmUser"
                   class="form-horizontal">

            <c:if test="${registrationError != null}">
            <div class="box box-default">
                <div class="box-header with-border">
                    <div class="alert alert-danger alert-dismissible">
                            ${registrationError}
                    </div>
                </div>
            </div>
            </c:if>
            <div class="form-group has-feedback">
                <form:input path="userName" placeholder="E-mail (*)" class="form-control"/>
                <form:errors path="userName" cssClass="error"/>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <form:errors path="password" cssClass="error" />
                <form:password path="password" placeholder="password (*)" class="form-control" />
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <form:errors path="matchingPassword" cssClass="error" />
                <form:password path="matchingPassword" placeholder="confirm password (*)" class="form-control" />
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">

                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Zarejestruj</button>
                </div>
                <!-- /.col -->
            </div>
            </form:form>

            <a href="/showMyLoginPage" class="text-center">Logowanie</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
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

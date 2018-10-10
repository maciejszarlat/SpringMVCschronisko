<jsp:include page="../components/head.jsp"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<jsp:include page="../components/sidebar.jsp"/>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Main row -->
        <div class="row">

            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Dodaj zwierzaka</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form:form action="employeeSave" modelAttribute="employee" method="post">

                                <form:hidden path="id"/>

                                <div class="col-xs-6">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="firstName">Imię</label>
                                            <form:input path="firstName" class="form-control" id="firstName" placeholder="Imię"/>
                                            <form:errors path="firstName" cssClass="text-red" />
                                        </div>
                                        <div class="form-group">
                                            <label for="firstName">Nazwisko</label>
                                            <form:input path="lastName" class="form-control" id="lastName" placeholder="Nazwisko"/>
                                            <form:errors path="lastName" cssClass="text-red" />
                                        </div>
                                        <div class="form-group">
                                            <label for="firstName">Email</label>
                                            <form:input path="email" class="form-control" id="email" placeholder="Email"/>
                                            <form:errors path="email" cssClass="text-red" />
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form:form>
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
        </div>
        <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<jsp:include page="../components/footer.jsp"/>
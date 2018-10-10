<jsp:include page="../components/head.jsp"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Zwierzaki w Twoim schronisku</h3>
                                <%--<c:if test="${success !=null}">--%>
                                    <%--<div class="callout callout-success">--%>
                                        <%--<h4>${success}</h4>--%>
                                    <%--</div>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${noPetFound !=null}">--%>
                                    <%--<div class="callout callout-danger">--%>
                                        <%--<h4>${noPetFound}</h4>--%>
                                    <%--</div>--%>
                                <%--</c:if>--%>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Imię</th>
                                        <th>Nazwisko</th>
                                        <th>e-mail</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="tempUser" items="${users}">
                                        <tr>
                                            <td>${tempUser.id}</td>
                                            <td>${tempUser.firstName}</td>
                                            <td>${tempUser.lastName}</td>
                                            <td>${tempUser.email}</td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>Id</th>
                                        <th>Imię</th>
                                        <th>Nazwisko</th>
                                        <th>e-mail</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.box-body -->
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
<jsp:include page="../components/head.jsp"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


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
                            <form:form action="petSave" modelAttribute="animal" method="post" enctype="multipart/form-data">

                                <form:hidden path="id"/>

                                <div class="col-xs-12">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="petName">Imię zwierzaka</label>
                                            <form:input path="petName" class="form-control" id="petName"
                                                        placeholder="Imię zwierzaka"/>
                                            <form:errors path="petName" cssClass="text-red"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="petAge">Wiek zwierzaka</label>
                                            <form:input path="petAge" class="form-control" id="petAge"
                                                        placeholder="Wiek zwierzaka"/>
                                            <form:errors path="petAge" cssClass="text-red"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="chipNo">Numer chipu</label>
                                            <form:input path="chipNo" class="form-control" id="chipNo"
                                                        placeholder="Numer chipu"/>
                                            <form:errors path="chipNo" cssClass="text-red"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="chipNo">Gatunek</label>
                                            <select name="species_id" class="form-control" id="species">
                                                <c:forEach items="${specie}" var="theSp">
                                                    <option value="${theSp.id}" ${theSp.id == animal.species_id ? 'selected="selected"' : ''}>${theSp.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="chipNo">Data przyjęcia</label>
                                            <form:input path="regDate" class="form-control" id="regDate"
                                                        placeholder="dd-mm-rrrr"/>
                                            <form:errors path="regDate" cssClass="text-red"/>
                                        </div>
                                            <div class="form-group">
                                                <label for="chipNo">Dodaj zdjęcie</label>
                                                <form:input type="file" path="image" id="file"/>
                                            </div>

                                        <div class="form-group">
                                            <label for="chipNo">Stan zwierzęcia w dniu przyjęcia</label>
                                            <form:textarea path="petDesctiption" class="textarea" placeholder="Place some text here"
                                                        style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"/>
                                            <form:errors path="petDesctiption" cssClass="text-red"/>
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
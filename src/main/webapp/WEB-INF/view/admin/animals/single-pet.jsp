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
                        <div class="box-body">
                            <img class="img-responsive pad" src="<c:url value="/resources/dist/img/petsImages/${theAnimal.petImage}" />" alt="Photo">

                            <p>${theAnimal.petDesctiption}</p>
                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                            <span class="pull-right text-muted">127 likes - 3 comments</span>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer box-comments">
                            <div class="box-comment">
                                <!-- User image -->
                                <img class="img-circle img-sm" src="<c:url value="/resources/dist/img/user3-128x128.jpg" />" alt="User Image">

                                <div class="comment-text">
                      <span class="username">
                        Maria Gonzales
                        <span class="text-muted pull-right">8:03 PM Today</span>
                      </span><!-- /.username -->
                                    It is a long established fact that a reader will be distracted
                                    by the readable content of a page when looking at its layout.
                                </div>
                                <!-- /.comment-text -->
                            </div>
                            <!-- /.box-comment -->
                            <div class="box-comment">
                                <!-- User image -->
                                <img class="img-circle img-sm" src="<c:url value="/resources/dist/img/user4-128x128.jpg" />" alt="User Image">

                                <div class="comment-text">
                      <span class="username">
                        Luna Stark
                        <span class="text-muted pull-right">8:03 PM Today</span>
                      </span><!-- /.username -->
                                    It is a long established fact that a reader will be distracted
                                    by the readable content of a page when looking at its layout.
                                </div>
                                <!-- /.comment-text -->
                            </div>
                            <!-- /.box-comment -->
                        </div>
                        <!-- /.box-footer -->
                        <div class="box-footer">
                            <form action="#" method="post">
                                <img class="img-responsive img-circle img-sm" src="<c:url value="/resources/dist/img/user4-128x128.jpg" />" alt="Alt Text">
                                <!-- .img-push is used to add margin to elements next to floating images -->
                                <div class="img-push">
                                    <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                                </div>
                            </form>
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
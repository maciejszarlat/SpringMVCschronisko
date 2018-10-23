<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<c:url value="/resources/dist/img/user2-160x160.jpg"/>" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>${user.userName}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menu</li>
            <li ${menuItem == "pet-list" || menuItem == "pet-add" ? 'class="active treeview"' :'class="treeview"'}>
                <a href="#">
                    <i class="fa fa-paw"></i> <span>Zwierzaki</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li ${menuItem == "pet-list" ? 'class="active"' :''}><a href="/admin/pet-list"><i class="fa fa-list-ol"></i>
                        Lista zwierzaków</a></li>
                    <li ${menuItem == "pet-add" ? 'class="active"' :''}><a href="/admin/pet-add"><i class="fa fa-plus"></i> Dodaj zwierzaka</a></li>
                </ul>
            </li>
            <li ${menuItem == "employee-list" ? 'class="active treeview"' :'class="treeview"'}>
                <a href="#">
                    <i class="fa fa-user"></i> <span>Pracownicy</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li ${menuItem == "employee-add" ? 'class="active"' :''}><a href="/admin/employee-list"><i class="fa fa-list-ol"></i> Lista pracowników</a></li>
                    <li><a href="/admin/employee-add"><i class="fa fa-plus"></i> Dodaj pracownika</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
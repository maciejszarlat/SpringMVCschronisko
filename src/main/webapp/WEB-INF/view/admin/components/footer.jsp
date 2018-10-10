<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
</footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<c:url value="/resources/bower_components/jquery/dist/jquery.min.js" />"></script>

<!-- jQuery UI 1.11.4 -->
<script src="<c:url value="/resources/bower_components/jquery-ui/jquery-ui.min.js" />"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js" />"></script><script src=""></script>
<!-- Morris.js charts -->
<script src="<c:url value="/resources/bower_components/raphael/raphael.min.js" />"></script>

<script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />"></script>

<!-- Sparkline -->
<script src="<c:url value="/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js" />"></script>

<!-- jvectormap -->
<script src="<c:url value="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />"></script>

<script src="<c:url value="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />"></script>

<!-- jQuery Knob Chart -->
<script src="<c:url value="/resources/bower_components/jquery-knob/dist/jquery.knob.min.js" />"></script>

<!-- daterangepicker -->
<script src="<c:url value="/resources/bower_components/moment/min/moment.min.js" />"></script>
<script src="<c:url value="/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js" />"></script>

<!-- datepicker -->
<script src="<c:url value="/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" />"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />"></script>
<!-- Slimscroll -->
<script src="<c:url value="/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- FastClick -->
<script src="<c:url value="/resources/bower_components/fastclick/lib/fastclick.js" />"></script>

<!-- AdminLTE App -->
<script src="<c:url value="/resources/dist/js/adminlte.min.js" />"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<c:url value="/resources/dist/js/pages/dashboard.js" />"></script>

<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/resources/dist/js/demo.js" />"></script>

<script src="<c:url value="/resources/bower_components/datatables.net/js/jquery.dataTables.min.js" />"></script>

<script src="<c:url value="/resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" />"></script>

<script>
    $(function () {
        $('#example1').DataTable()
        $('#example2').DataTable({
            'paging'      : true,
            'lengthChange': false,
            'searching'   : false,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false
        })
    })
    $(function () {
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1')
        //bootstrap WYSIHTML5 - text editor
        $('.textarea').wysihtml5()
    })
</script>
</body>
</html>

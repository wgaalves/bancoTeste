<%--
  Created by IntelliJ IDEA.
  User: William Alves
  Date: 5/2/16
  Time: 10:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Banco de Testes</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <r:external rel="stylesheet" uri="/bootstrap/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <r:external rel="stylesheet" uri="/css/AdminLTE.min.css"/>
    <!-- Datatables -->
    <r:external rel="stylesheet" uri="/plugins/datatables/dataTables.bootstrap.css"/>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.css" />
    <r:external rel="stylesheet" uri="/plugins/select2/select2.min.css"/>

</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


<g:render template="/layouts/admin/header" />
<g:render template="/layouts/admin/aside" />
<g:render template="/layouts/admin/content" />
<g:render template="/layouts/admin/footer" />
</div>


<r:external uri="/plugins/jQuery/jQuery-2.1.4.min.js" />
<r:external uri="/bootstrap/js/bootstrap.min.js"/>
<r:external uri="/js/app.min.js" />

<!-- DataTables -->
<r:external uri="/plugins/datatables/jquery.dataTables.min.js"></r:external>
<r:external uri="/plugins/datatables/dataTables.bootstrap.min.js"></r:external>
<!-- SlimScroll -->
<r:external uri="/plugins/slimScroll/jquery.slimscroll.min.js"></r:external>
<!-- FastClick -->
<r:external uri="/plugins/fastclick/fastclick.min.js"></r:external>
<!-- AdminLTE for demo purposes -->
<r:external uri="/js/demo.js"></r:external>
<r:external uri="/plugins/select2/select2.full.min.js"></r:external>

<script>
    $(document).ready(function(){
        $(".tbl").DataTable();

        $(".select2").select2();
    });
</script>


</body>
</html>
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
    <title>Error 404</title>
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
<body >
<div class="wrapper">

<section class="content" style="margin-top: 15%;">
    <div class="error-page">
        <h2 class="headline text-yellow"> 404</h2>
        <div class="error-content">
            <h3><i class="fa fa-warning text-yellow"></i> Oops! Página não encontrada.</h3>
            <p>
                Não achamos a página que esta procurando.
                 <a  href="${createLink(uri: '/')}"> Clique aqui</a> para Voltar
            </p>
            <form class="search-form">
                <div class="input-group">
                    <input type="text" name="search" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button type="submit" name="submit" class="btn btn-warning btn-flat"><i class="fa fa-search"></i></button>
                    </div>
                </div><!-- /.input-group -->
            </form>
        </div><!-- /.error-content -->
    </div><!-- /.error-page -->
</section><!-- /.content -->
    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.js"></script>

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
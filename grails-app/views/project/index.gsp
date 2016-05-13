<%--
  Created by IntelliJ IDEA.
  User: william
  Date: 5/2/16
  Time: 11:24 AM
--%>

<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Listar Projetos</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<div class="col-xs-12">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Projetos</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <table id="fase_tbl" class="tbl table table-bordered table-striped">
                <thead>
                <tr>
                    <th width="20%" class="text-center">ID</th>
                    <th class="text-center">Nome</th>
                    <th class="text-center">Tag</th>
                    <th width="10%" class="text-center">Ações</th>

                </tr>
                </thead>
                <tbody>

                <g:each in="${projectList}">
                    <tr>
                        <td class="text-center">${it.id}</td>
                        <td class="text-center">${it.name}</td>
                        <td class="text-center">${it.tag}</td>
                        <td class="text-center">
                            <a class="btn btn-primary" href="${createLink(controller:'project' , action: 'edit' ,params:[id:it.id] )}" >
                                <i class="fa fa-pencil"></i>
                            </a>
                            <a class="btn btn-danger delete" href="#"  id="${it.id}">
                                <i class="fa fa-trash"></i>
                            </a>
                        </td>
                    </tr>

                </g:each>


                </tbody>
            </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.js"></script>
<script >
    $(document).ready(function() {
        var url = "${createLink(controller: 'project',action: 'delete')}";
        $('.delete').on('click', function () {
            console.log("click");
            var id = $(this).attr('id');
            console.log(id);
            $.ajax({
                url: url,
                data: {'id': id},
                type: 'POST',
                success: function () {
                    $(this).parents('tr').first().remove();
                }
            });
        });
    });

</script>






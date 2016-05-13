<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Editar Tipo</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>



<div class="col-md-12">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Cadastrar Tipo</h3>
        </div>

        <g:form action="update" role="form">
            <div class="box-body">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" name="name" value="${type.name}" class="form-control" id="name" placeholder="insira o nome do projeto">
                </div>
                <input type="hidden" name="typeId" value="${type.id}">

            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </g:form>
    </div>
</div>

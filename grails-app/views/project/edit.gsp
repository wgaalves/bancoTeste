<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fase Index</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>



<div class="col-md-12">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Editar Projeto</h3>
        </div>

        <g:form action="update" role="form">
            <div class="box-body">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" name="name" value="${project.name}" class="form-control" id="name" placeholder="insira o nome do projeto">
                </div>
                <div class="form-group">
                    <label for="tag">Tag</label>
                    <input type="text" name="tag" value="${project.tag}" class="form-control" id="tag" placeholder="insira a tag desse projeto">
                </div>
                    <input type="hidden" value="${project.id}" name="projectId">
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </g:form>
    </div>
</div>

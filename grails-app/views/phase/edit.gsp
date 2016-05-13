<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edição de Fase</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>



<div class="col-md-12">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Editar Fase</h3>
        </div>

        <g:form action="update" role="form">
            <div class="box-body">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" name="name" value="${phase.name}" class="form-control" id="name" placeholder="Digite o nome da fase">
                    <input type="hidden" value="${phase.id}" name="phaseId">
                </div>

            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </g:form>
    </div>
</div>

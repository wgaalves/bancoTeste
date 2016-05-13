<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastro de Rotina</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>



<div class="col-md-12">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Procurar Rotina</h3>
        </div>

        <g:form action="getResults" role="form">
            <div class="box-body">

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Project</label>
                        <select class="form-control select2" name="project" >
                            <g:each in="${projectList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                    </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control select2" name="type" >
                            <g:each in="${typeList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Fase</label>
                        <select class="form-control select2" name="phase" >
                            <g:each in="${phaseList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Escopo</label>
                        <select class="form-control select2" name="scope" >
                            <g:each in="${scopeList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>

            </div>

            <div class="box-footer text-center">
                <button type="submit" class="btn btn-primary">Procurar</button>
            </div>
        </g:form>




    </div>
    <div class="row results">
        <div class="col-md-12" style="margin-top: 0;">
            <div class="box box-default collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">Rotina 1</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    The body of the box
                </div>
            </div>
        </div>
        <div class="col-md-12" style="margin-top: 0;">
            <div class="box box-default collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">Rotina 2</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    The body of the box
                </div>
            </div>
        </div>
    </div>
</div>

<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastro de Rotina</title>

    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>



<div class="col-md-12">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Cadastrar Rotina</h3>
        </div>

        <g:form action="save" role="form">
            <div class="box-body">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Project</label>
                            <select class="form-control select2" name="project" >
                                    <g:each in="${projectList}">
                                        <option value="${it.id}">${it.name}</option>
                                    </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <select class="form-control select2" name="type" >
                                <g:each in="${typeList}">
                                    <option value="${it.id}">${it.name}</option>
                                </g:each>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Fase</label>
                            <select class="form-control select2" name="phase" >
                                <g:each in="${phaseList}">
                                    <option value="${it.id}">${it.name}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Escopo</label>
                            <select class="form-control select2" name="scope" >
                                <g:each in="${scopeList}">
                                    <option value="${it.id}">${it.name}</option>
                                </g:each>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Descrição</label>
                            <textarea name="description" class="form-control" rows="5" placeholder="Enter ..."></textarea>
                        </div>
                    </div>

        </div>

        <div class="box-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        </g:form>
    </div>
</div>

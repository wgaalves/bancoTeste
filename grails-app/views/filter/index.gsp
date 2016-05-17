<head>

    <meta name="layout" content="admin/main"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <r:external rel="stylesheet" uri="/css/skins/_all-skins.min.css"/>
</head>
<style>

.boxSpacing {
    padding: 0 2% 0 1%;
}
</style>


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
                        <select class="form-control select2" name="project"  id="project" >
                            <option value="0" selected>Todos</option>
                            <g:each in="${projectList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                    </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control select2" name="type"  id="type">
                            <option value="0" selected>Todos</option>
                            <g:each in="${typeList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Fase</label>
                        <select class="form-control select2" name="phase" id="phase" >
                            <option value="0" selected>Todos</option>
                            <g:each in="${phaseList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Escopo</label>
                        <select class="form-control select2" name="scope" id="scope">
                            <option value="0" selected>Todos</option>
                            <g:each in="${scopeList}">
                                <option value="${it.id}">${it.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>

            </div>

            <div class="box-footer text-center">
                <a href="#" class="buscar btn btn-primary">Procurar</a>
            </div>
        </g:form>




    </div>
    <div class="row results">

    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.js"></script>
<r:external uri="/plugins/jQuery/jQuery-2.1.4.min.js"/>
<script>
$(document).ready(function(){



    $(".buscar").on('click',function(){
        $('.results').empty();
        var url = "${createLink(controller:'filter',action: 'getResults')} ";
        $.ajax({
            url: url,
            data: { 'project': $("#project").val(),
                    'phase':$("#phase").val(),
                    'type':$("#type").val()  ,
                    'scope':$("#scope").val()},
            type: 'POST',
            success: function (data) {

                $.each(data, function(k,v) {

                    var div = '<div class="boxSpacing" ><div class="box box-default collapsed-box"><div class="box-header with-border">';
                    var valor= '<h3 class="box-title">Projeto : '+ v.project + '  ' + v.projecttag +'-'+ v.phase+'.'+v.type+'.'+ v.scope+'.'+ v.version+'</h3>';
                    var div2 = '<div class="box-tools pull-right"><button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button></div></div>';
                    var msg = '<div class="box-body">'+ v.description +'</div></div></div>';

                        div += valor
                        div += div2
                        div += msg
                    $('.results').append(div);

                });

            }
        });
    });



});


</script>
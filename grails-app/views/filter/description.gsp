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
            <h3 class="box-title">Procurar rotina por descrição</h3>
        </div>

        <g:form action="getResults" role="form">
            <div class="box-body">

                <div class="col-md-12">
                    <div class="form-group">
                        <label>Busca</label>
                        <input type="email" class="form-control" id="searchString" name="searchString" placeholder="">
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
            var url = "${createLink(controller:'filter',action: 'getDescriptionResults')} ";
            $.ajax({
                url: url,
                data: { 'searchString': $("#searchString").val()},
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
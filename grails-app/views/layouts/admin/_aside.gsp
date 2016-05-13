<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <r:img uri="/img/avatarpadrao.png" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p> Admin </p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
                <a href="${createLink(uri: '/')}">
                    <i class="fa fa-home"></i> <span>Home</span>
                </a>
            </li>
            <!-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span></span>
                    <span class="label label-primary pull-right">4</span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Listar </a></li>
                </ul>
            </li>-->
    <li><a href="#"><i class="fa fa-search text-white"></i> <span> Filtro </span></a></li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-suitcase text-blue"></i>
            <span>Projeto</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="${createLink(controller:'project' , action: 'create')}"><i class="fa fa-plus text-white"></i> <span> Cadastrar </span></a></li>
            <li><a href="${createLink(controller:'project' , action: 'index')}"><i class="fa fa-list text-white"></i> <span> Listar </span></a></li>
        </ul>
    </li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-repeat text-purple"></i>
            <span>Rotinas</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="${createLink(controller:'routine' , action: 'create')}"><i class="fa fa-plus text-white"></i> <span> Cadastrar </span></a></li>
            <li><a href="${createLink(controller:'routine' , action: 'index')}"><i class="fa fa-list text-white"></i> <span> Listar </span></a></li>
        </ul>
    </li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-paperclip text-yellow"></i>
            <span>Escopo</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="${createLink(controller:'scope' , action: 'create')}"><i class="fa fa-plus text-white"></i> <span> Cadastrar </span></a></li>
            <li><a href="${createLink(controller:'scope' , action: 'index')}"><i class="fa fa-list text-white"></i> <span> Listar </span></a></li>
        </ul>
    </li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-info-circle text-red"></i>
            <span>Tipo</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="${createLink(controller:'type' , action: 'create')}"><i class="fa fa-plus text-white"></i> <span> Cadastrar </span></a></li>
            <li><a href="${createLink(controller:'type' , action: 'index')}"><i class="fa fa-list text-white"></i> <span> Listar </span></a></li>
        </ul>
    </li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-spinner text-aqua"></i>
            <span>Fase</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="${createLink(controller:'phase' , action: 'create')}"><i class="fa fa-plus text-white"></i> <span> Cadastrar </span></a></li>
            <li><a href="${createLink(controller:'phase' , action: 'index')}"><i class="fa fa-list text-white"></i> <span> Listar </span></a></li>
        </ul>
    </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
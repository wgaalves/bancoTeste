<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i> Home</a></li>
            <li class="active">${pageProperty(name:'page.title')}</li>
        </ol>
    </section>


    <section class="content">

        <div class="row">
            <g:layoutBody />
        </div>

    </section>
</div>
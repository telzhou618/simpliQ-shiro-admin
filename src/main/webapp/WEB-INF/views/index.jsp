<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Shiro-Admin</title>
    <!-- Icons -->
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/simple-line-icons.css" rel="stylesheet">
    <!-- Premium Icons -->
    <link href="/css/glyphicons.css" rel="stylesheet">
    <link href="/css/glyphicons-filetypes.css" rel="stylesheet">
    <link href="/css/glyphicons-social.css" rel="stylesheet">
    <!-- Main styles for this application -->
    <link href="/css/style.css" rel="stylesheet">
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button">&#9776;</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav hidden-md-down">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">&#9776;</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item dropdown hidden-md-down">
                <a class="nav-link nav-link" data-toggle="tooltip" title="通知"  data-placement="bottom" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-envelope-letter"></i>
                    <span class="badge badge-pill badge-success">7</span>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="/img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class="hidden-md-down"><shiro:user> <shiro:principal property="userName"></shiro:principal></shiro:user></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="/logout" target="_top"><i class="fa fa-lock"></i> 退出</a>
                </div>
            </li>
            <li class="nav-item hidden-md-down"></li>
        </ul>
    </header>
    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <form>
                    <div class="form-group p-h mb-0">
                        <input type="text" style="box-shadow: none;" class="form-control" aria-describedby="search" placeholder="Search...">
                    </div>
                </form>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="main.shtml"><i class="icon-home"></i> 主页面 </a>
                    </li>
                    <li class="nav-title">管理员菜单</li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-settings"></i> 系统管理</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link m-item" href="user/list.shtml"><i class="icon-user"></i> 用户管理</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link m-item" href="components/social-buttons.html"><i class="icon-people"></i> 角色管理</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link m-item" href="components/cards.html"><i class="icon-menu"></i> 菜单管理</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link m-item" href="components/modals.html"><i class="icon-puzzle"></i> 日志管理</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link m-item" href="components/switches.html"><i class="icon-eye"></i> 系统监控</a>
                            </li>
                        </ul>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-list"></i> 商品管理</a>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-anchor"></i> 采购管理</a>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-layers"></i> 仓库管理</a>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-user-following"></i> 会员管理</a>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-folder"></i> 文件管理</a>
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-pie-chart"></i> 统计管理</a>
                    </li>
                    <li class="nav-title">友情链接</li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-danger"></i> 商城前台</a>
                    </li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-info"></i> 支付系统</a>
                    </li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-warning"></i> 商家系统</a>
                    </li>

                </ul>
            </nav>
        </div>
        <!-- Main content -->
        <div class="main" id="ui-view" style="overflow-y: hidden;"></div>
          <!-- Main content -->
        <!-- <main class="main">
            <div class="container-fluid pt-2">
                <div id="ui-view"></div>
            </div>
            /.conainer-fluid
        </main> -->
    </div>
    <footer class="app-footer">
        <a href="https://genesisui.com"></a> Copyright &copy; 甘肃米粒电子商务有限公司 
        <span class="float-right">
            Powered by <a href="https://genesisui.com">GenesisUI</a>
        </span>
    </footer>
    <script src="/js/libs/jquery.min.js"></script>
    <script src="/js/libs/tether.min.js"></script>
    <script src="/js/libs/bootstrap.min.js"></script>
    <script src="/js/libs/pace.min.js"></script>
    <script src="/js/libs/bootbox.min.js"></script>
    <script src="/js/libs/Chart.min.js"></script>
    <script src="/js/app.js"></script>

</body>

</html>

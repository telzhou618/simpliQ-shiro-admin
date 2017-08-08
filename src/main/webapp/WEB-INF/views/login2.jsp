<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="SimpliQ Bootstrap 4 Admin Template">
    <meta name="author" content="Lukasz Holeczek">
    <meta name="keyword" content="SimpliQ Bootstrap 4 Admin Template">
    <!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->
    <title>Shiro-Admin</title>
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/simple-line-icons.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>
<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-group mb-0">
                    <div class="card p-2">
                        <div class="card-block">
                           <form method="post" class="form" action="/doLogin">
                           	 <h1>登录</h1>
	                            <p class="text-muted">请输入您的账号和密码</p>
	                            <div class="input-group mb-1">
	                                <span class="input-group-addon"><i class="icon-user"></i>
	                                </span>
	                                <input type="text" class="form-control" placeholder="用户名" name="username" required>
	                            </div>
	                            <div class="input-group mb-2">
	                                <span class="input-group-addon"><i class="icon-lock"></i>
	                                </span>
	                                <input type="password" class="form-control" placeholder="密码" name="password" required>
	                            </div>
	                             <p style="color: red;padding: 5px;">${error}</p>
	                            <div class="row">
	                                <div class="col-6">
	                                    <button type="submit" class="btn btn-primary px-2">登 录</button>
	                                </div>
	                                <div class="col-6 text-right">
	                                    <button type="button" class="btn btn-link px-0">忘记密码?</button>
	                                </div>
	                            </div>
                           </form>
                        </div>
                    </div>
                    <div class="card card-inverse card-primary py-3 hidden-md-down" style="width:44%">
                        <div class="card-block text-center">
                            <div>
                                <h2>Sign up</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <button type="button" class="btn btn-primary active mt-1">Register Now!</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap and necessary plugins -->
    <script src="/js/libs/jquery.min.js"></script>
    <script src="/js/libs/tether.min.js"></script>
    <script src="/js/libs/bootstrap.min.js"></script>
    <script src="/js/libs/jquery.validate.js"></script>
    <script src="/js/views/validation.js"></script>
</body>
</html>

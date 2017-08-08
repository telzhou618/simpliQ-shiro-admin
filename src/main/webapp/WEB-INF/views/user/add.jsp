<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form class="form form-horizontal" id="signupForm" method="post" action="/user/doAdd">
    <div class="form-group row">
        <label class="form-control-label col-md-2" for="firstname">用户名</label>
        <input type="text" class="form-control col-md-9" id="firstname" name="userName" placeholder="用户名" required />
    </div>

    <div class="form-group row">
        <label class="form-control-label col-md-2" for="password">密码</label>
        <input type="password" class="form-control col-md-9" id="password" name="password" placeholder="密码" required />
    </div>

    <div class="form-group row">
        <label class="form-control-label col-md-2" for="confpwd">确认密码</label>
        <input type="password" class="form-control col-md-9" id="confpwd" name="confPassword" equalTo="#password" placeholder="确认密码" required />
    </div>
    <div class="form-group row">
    	<label class="form-control-label col-md-2" for="confpwd">状态</label>
	    <label class="switch switch-icon switch-primary">
	         <input type="checkbox" name="userState" class="switch-input" value="1" checked>
	         <span class="switch-label" data-on="&#xf00c" data-off="&#xf00d"></span>
	         <span class="switch-handle"></span>
	     </label>
    </div>

    <div class="form-group row">
        <label class="form-control-label col-md-2" for="email">描述</label>
        <textarea rows="3" cols="" class="form-control col-md-9" placeholder="描述" name="userDesc"></textarea>
    </div>
</form>
<script type="text/javascript" src="/js/libs/jquery.validate.js"></script>
<script type="text/javascript" src="/js/views/validation.js"></script>


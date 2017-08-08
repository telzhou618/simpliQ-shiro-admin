<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <form class="form form-horizontal" id="signupForm" method="post" action="/user/doEdit">
    <div class="form-group row">
        <label class="form-control-label col-md-2" for="firstname">用户名</label>
        <input type="hidden" name="id" value="${sysUser.id }" />
        <input type="text" class="form-control col-md-9" id="firstname" readonly="readonly" name="userName" value="${sysUser.userName }" placeholder="用户名" required />
    </div>

    <div class="form-group row">
        <label class="form-control-label col-md-2" for="password">密码</label>
        <input type="password" class="form-control col-md-9" id="password" name="password" placeholder="密码为空则不修改密码" />
    </div>

    <div class="form-group row">
        <label class="form-control-label col-md-2" for="confpwd">确认密码</label>
        <input type="password" class="form-control col-md-9" id="confpwd" name="confPassword" equalTo="#password" placeholder="确认密码" />
    </div>
	<div class="form-group row">
    	<label class="form-control-label col-md-2" for="confpwd">状态</label>
	    <label class="switch switch-icon switch-primary">
	     	 <c:choose>
	     	 	<c:when test="${sysUser.userState==1 }">
	         		<input type="checkbox" name="userState" class="switch-input" value="1" checked="checked">
	     	 	</c:when>
	     	 	<c:otherwise>
	         		<input type="checkbox" name="userState" class="switch-input" value="1">
	     	 	</c:otherwise>
	     	 </c:choose>
	         <span class="switch-label" data-on="&#xf00c" data-off="&#xf00d"></span>
	         <span class="switch-handle"></span>
	     </label>
    </div>
    <div class="form-group row">
        <label class="form-control-label col-md-2" for="email">描述</label>
        <textarea rows="3" cols="" class="form-control col-md-9" placeholder="描述" name="userDesc">${sysUser.userDesc }</textarea>
    </div>
</form>
<script type="text/javascript" src="/js/libs/jquery.validate.js"></script>
<script type="text/javascript" src="/js/views/validation.js"></script>



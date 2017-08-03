<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
    var requireJS = [
      "/js/libs/jquery.validate.js"
    ];
   loadJS(requireJS, "/js/views/validation.js");
</script>

<div class="animated fadeIn">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <i class="icon-note"></i> 新增用户
                    <div class="card-actions">
                        <a href="https://github.com/jzaefferer/jquery-validation">
                            <small class="text-muted">help</small>
                        </a>
                    </div>
                </div>
                <div class="card-block">
                    <div class="row">
                        <div class="col-md-6">
                            <form class="form" id="signupForm" method="post" action="/user/doAdd">
                                <div class="form-group">
                                    <label class="form-control-label" for="firstname">用户名</label>
                                    <input type="text" class="form-control" id="firstname" name="userName" placeholder="用户名" required />
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label" for="password">密码</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="密码" required />
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label" for="confpwd">确认密码</label>
                                    <input type="password" class="form-control" id="confpwd" name="confPassword" equalTo="#password" placeholder="确认密码" required />
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label" for="email">描述</label>
                                    <textarea rows="3" cols="" class="form-control" placeholder="描述" name="userDesc"></textarea>
                                </div>

                                <div class="form-group">
                                	<a href="javascript:loadPage('user/list.shtml');" class="btn btn-default"><i class="icon-arrow-left"></i>&nbsp; 返回</a>
                                    <button type="submit" class="btn btn-primary" ><i class="fa fa-save"></i>&nbsp; 保存</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</div>


<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- Icons -->
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/simple-line-icons.css" rel="stylesheet">
<!-- Premium Icons -->
<link href="/css/glyphicons.css" rel="stylesheet">
<link href="/css/glyphicons-filetypes.css" rel="stylesheet">
<link href="/css/glyphicons-social.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.3/jquery-confirm.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link rel="stylesheet" type="text/css" href="/easyui/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/css/table.css">

<script type="text/javascript" src="/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/easyui/locale/easyui-lang-zh_CN.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.3/jquery-confirm.min.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript" src="/js/views/table.js"></script>
</head>
<body style="overflow-y:hidden">
    <table id="dg" title="用户管理" class="easyui-datagrid fit" style="width: 100%;height: 100%;display: none;"
            url="/user/json"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="false">
        <thead>
            <tr>
            	<th data-options="field:'ck',checkbox:true"></th>
                <th field="userName" width="50">用户名</th>
                <th field="userDesc" width="50">描述</th>
                <th field="createTime" width="50" formatter="formatDateTime">创建时间</th>
                <th field="userState" width="50"  formatter="formatState">状态</th>
                <th field="id" width="20"  align="center" formatter="formatAction" >操作</th>
            </tr>
        </thead>
    </table>
    <div id="toolbar" style="display: none;">
        <a href="javascript:void(0)" class="btn btn-primary btn-sm" plain="true" onclick="newUser()"><i class="fa fa-plus"></i> 新增</a>
        <a href="javascript:void(0)" class="btn btn-danger btn-sm" plain="true" onclick="deleteBatchRow()"><i class="fa fa-remove"></i> 删除</a>
    </div>
    
    <div id="dlg" class="easyui-dialog" style="width:400px;display: none;"
            closed="true" buttons="#dlg-buttons">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">User Information</div>
            <div style="margin-bottom:10px">
                <input name="firstname" class="easyui-textbox" required="true" label="First Name:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="lastname" class="easyui-textbox" required="true" label="Last Name:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="phone" class="easyui-textbox" required="true" label="Phone:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="email" class="easyui-textbox" required="true" validType="email" label="Email:" style="width:100%">
            </div>
        </form>
    </div>
    <div id="dlg-buttons" style="display: none;">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">取消</a>
    </div>
    <script type="text/javascript">
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','New User');
            $('#fm').form('clear');
            url = 'save_user.php';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
                url = 'update_user.php?id='+row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');        // close the dialog
                        $('#dg').datagrid('reload');    // reload the user data
                    }
                }
            });
        }
    </script>
</body>
</html>
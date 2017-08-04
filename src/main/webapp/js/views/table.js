//日期格式化
function formatDateTime(value){
	return new Date(value).format("yyyy-MM-dd hh:mm:ss");
}

//格式化状态
function formatState(value){
	return value == 1 ? "<span class='badge badge-success'>启用</span>" : "<span class='badge badge-danger'>禁用</span>" ;
}
//格式化操作按钮
function formatAction(value,row,index){
	var edit_html = '<a href="javascript:editRow(\''+value+'\');" class="btn btn-primary btn-sm icon" data-toggle="tooltip" title="编辑"><i class="fa fa-edit"></i> </a>&nbsp;&nbsp;';
	var	del_html = '<a href="javascript:deleteRow(\''+value+'\');" class="btn btn-danger btn-sm icon" plain="true" data-toggle="tooltip" title="删除"><i class="fa fa-remove"></i></a>';
	return edit_html + del_html;
}

//编辑
function editRow(target){
	$('#dt').datagrid('beginEdit', getRowIndex(target));
}

//删除单条
function deleteRow(target){
	destroyData([target]);
}
//批量删除
function deleteBatchRow(){
	var rows = $('#dg').datagrid('getSelections');
	if(rows && rows.length > 0){
		var arr = [] ;
		$.each(rows,function(i,n){
			arr.push(n.id);
		});
		destroyData(arr);
	}else{
		$.alert({
		    title: '提示!',
		    theme:'material',
		    backgroundDismiss:true,
		    content: '请选择要删除的记录!',
		});
	}
}
//执行删除
function destroyData(vals){
   var msg = vals.length > 1 ? "确认删除[" + vals.length + "]条记录?":"确认删除该条记录?";
   $.confirm({
		title: '警告!',
	    content: msg,
	    type: 'red',
	    theme:'material',
	    buttons: {   
	        ok: {
	            text: "确定",
	            btnClass: 'btn-danger',
	            action: function(){
	            	$.post('/user/del',{ids:vals},function(result){
	                    if (result.success){
	                        $('#dg').datagrid('reload');
	                    } else {
	                    	$.alert({
	                		    title: '提示!',
	                		    theme:'material',
	                		    backgroundDismiss:true,
	                		    content: '请选择要删除的记录!',
	                		});
	                    }
	                },'json');
	            }
	        },
	        cancel: {
	        	text: "取消",
	            btnClass: 'btn-default',
	            keys: ['enter'],
	            action: function(){}
	        }
	    }
	});
}

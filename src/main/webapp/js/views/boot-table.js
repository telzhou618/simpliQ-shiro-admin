
//格式化序号
function runningFormatter(value, row, index) {
    return index + 1;
}
//日期格式化
function formatDateTime(value){
	return new Date(value).format("yyyy-MM-dd hh:mm:ss");
}

//格式化状态
function formatState(value){
	return value == 1 ? "<span class='badge badge-success'>启用</span>" : "<span class='badge badge-danger'>禁用</span>" ;
}
//格式化操作按钮
function formatOperation(value){
	var data_edit_url = $(".boot-table").attr("data-edit-url");
	var data_del_url = $(".boot-table").attr("data-del-url");
	var edit_html = '<a href="javascript:;" class="edit btn btn-primary btn-sm icon" data-toggle="tooltip" title="编辑"><i class="fa fa-edit"></i></a>&nbsp;';
	var	del_html = '<a href="javascript:;" class="del btn btn-danger btn-sm icon" data-toggle="tooltip" title="删除"><i class="fa fa-remove"></i></a>';
	return edit_html + del_html;
}
//删除逻辑
function del(delStr){
	
	$.confirm({
		title: '警告!',
	    content: '您确定要删除该条记录吗?',
	    type: 'red',
	    theme:'material',
	    buttons: {   
	        ok: {
	            text: "确定",
	            btnClass: 'btn-danger',
	            keys: ['enter'],
	            action: function(){
	            	$.post(delStr,{},function(data){
						if(data.success){
							window.location.reload();
						}else{
							$.alert(data.message);
						}
					});
	            }
	        },
	        cancel: {
	        	text: "取消",
	            btnClass: 'btn-default',
	            keys: ['enter'],
	            action: function(){
	                 console.log('the user clicked confirm');
	            }
	        }
	    }
	});
}
//初始化表格
$(function(){
	$('.boot-table').bootstrapTable({
		onLoadSuccess : function(){
		//	$('[data-toggle="tooltip"]').tooltip();
		}
	});
	$(".del").click(function(){
		del("sss");
	});
	//$('[data-toggle="tooltip"]').tooltip();
});

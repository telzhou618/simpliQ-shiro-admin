Date.prototype.format = function(fmt) { 
    var o = { 
       "M+" : this.getMonth()+1,                 //月份 
       "d+" : this.getDate(),                    //日 
       "h+" : this.getHours(),                   //小时 
       "m+" : this.getMinutes(),                 //分 
       "s+" : this.getSeconds(),                 //秒 
       "q+" : Math.floor((this.getMonth()+3)/3), //季度 
       "S"  : this.getMilliseconds()             //毫秒 
   }; 
   if(/(y+)/.test(fmt)) {
           fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
   }
    for(var k in o) {
       if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
   return fmt; 
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
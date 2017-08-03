function pageselectCallback(page_index, jq){
	  console.log(jq);
       var page = page_index;
       if(page !=1){
    	   //loadPage('user/list.shtml?current='+page);
       }
       return true;
   }
$(document).ready(function(){
	var $pagination = $(".pagination");
	var current =parseInt($pagination.attr("current"));
	var total =parseInt($pagination.attr("total"));
	console.log(current+","+total);
	
	$pagination.pagination(total, {
		callback: pageselectCallback,
		num_edge_entries: 0,
		current_page:current,
		next_show_always :false,
		prev_show_always :false,
		next_text:'下一页',
		prev_text:'上一页',
		items_per_page:10 //每页记录数
	});
});
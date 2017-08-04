$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        "ajax": "/user/action",
        "table": "#example",
        "title" :'创建用户',
        "fields": [ {
                "label": "用户名:",
                "name": "userName"
            }, {
                "label": "密码:",
                "name": "password"
            }, {
                "label": "确认密码:",
                "name": "confPassword"
            }, {
                "label": "描述:",
                "type" : "textarea",
                "name": "userDesc"
            }
        ]
    } );
 
    $('#example').DataTable( {
        dom: "Bfrtip",
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Chinese.json"
        },
        ajax: {
            url: "/user/json",
            type: "POST"
        },
        serverSide: true,
        columns: [
            { data: "userName" },
            { data: "userDesc" },
            { data: "createTime" },
            { data: "userState" },
            { data: null },
        ],
        select: true,
        buttons: [
            { extend: "create", editor: editor },
            { extend: "edit",   editor: editor },
            { extend: "remove", editor: editor }
        ]
    } );
} );
$(document).ready(function() {

    //init_sidebar();
    //init_InputMask();
   // init_validator();

    switch ($(location).attr('pathname')) {
        case "/reestr/sert/published/index":
            init_PublishedDataTables();

            break;
        default:

            init_PublishedDataTables();
            break;
    }
});

/*<!--==========================
     Tables
   ============================-->*/
function init_PublishedDataTables() {

    $('#datatable').dataTable({
        processing : true,
        //ajax: "/reestr/sert/loadAllJSON/",
        // ajax: "/js/datatables/demo1.json",

        // AjaxDataProp:"",

        'order': [[ 3, 'asc' ]],
        //"/reestr/sert/loadAllJSON/"

        ajax : {
            url :"/registry/documentsnationalcertificationsystem/loadAllJSON/",
            //dataSrc : 'Data'
            dataSrc : 'aaData'
        },
        columnDefs: [
            /* {
                 "targets": [6],
                 "visible": false,
                 "searchable": false
             },*/

            {
                "targets": [0],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "1%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    var result='';
                    switch (data) {
                        case '0':
                            result= '<span class="status-ico orange" title="Приостановлен">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                        case '1':
                            result= '<span class="status-ico green" title="Возобновлен">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                        case '2':
                            result= '<span class="status-ico green" title="Действует">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                        case '3':
                            result= '<span class="status-ico green" title="Не действует">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                        case '4':
                            result= '<span class="status-ico red" title="Архивный">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                        default:
                            result= '<span class="status-ico purple" title="Архивный">&nbsp;&nbsp;&nbsp;</span>';
                            break;
                    }


                    return result;
                }
            },
            {
                "targets": [1],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "50%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/documentsnationalcertificationsystem/details/'+row[3]+'" class="" >' +data+'</a>';
                }
            },
            {
                "targets": [2],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "50%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/documentsnationalcertificationsystem/details/'+row[3]+'" class="" >' +data+'</a>';
                }
            },




            {
                "targets": [3],
                "visible": false,
                "searchable": false,
                "orderable": false,
                "width": "7%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="javascript:void(0)"  style="width: 93.91px;"  class="btn btn-app" onclick="ViewСhecking('+data+',event)"><i class="fa fa-edit"></i> Посмотреть</a>';
                }
            }
            //,
            //Поля только для поиска
            /*{
                "targets": [7],
                "visible": false,
                "searchable": true,
                "orderable": false,
                "width": "0%"
            },
            {
                "targets": [8],
                "visible": false,
                "searchable": true,
                "orderable": false,
                "width": "0%"
            },
            {
                "targets": [9],
                "visible": false,
                "searchable": true,
                "orderable": false,
                "width": "0%"
            },*/

        ],




        language: {
            "url": "/static/js/datatables/Russian.json"
        },
        dom: '<"html5buttons"B>lTfgitp',
        buttons: [
            {
                extend: "copy",
                className: "btn-sm"
            },
            {
                extend: "csv",
                className: "btn-sm"
            },
           /* {
                extend: "excel",
                className: "btn-sm"
            },
            {
                extend: "pdfHtml5",
                className: "btn-sm"
            },*/
            {
                extend: "print",
                className: "btn-sm"
            },
        ],
        responsive: true,

        fnRowCallback: function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
            jQuery(nRow).attr('id', aData[6]);
            // jQuery(nRow).css("cursor", "pointer");

            return nRow;
        }
    });



};










/*<!--==========================
     Controls
   ============================-->*/




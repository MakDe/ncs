$(document).ready(function() {

    //init_sidebar();
    //init_InputMask();
   // init_validator();





    switch ($(location).attr('pathname')) {
        case "/reestr/sert/published/index":
            init_PublishedDataTables();
            init_oksm();
            init_CodeTypeProducts();
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
        'order': [[ 1, 'asc' ]],
        "processing": true,
        "serverSide": true,
        // "ajax": "/registry/sert/loadAllJSONtest/",
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
                    switch (row["Reestr_sert_status_id"]) {
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
                "width": "10%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/blacklistmanufacturers/details/'+row["Id"]+'" class="" >' +row["publish_date"]+'</a>';
                }
            },
            {
                "targets": [2],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "5%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/blacklistmanufacturers/details/'+row["Id"]+'" class="" >' +row["Prod_name"]+'</a>';
                }
            },
            {
                "targets": [3],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "5%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/blacklistmanufacturers/details/'+row["Id"]+'" class="" >' +row["Org2_name"]+'</a>';
                }
            },
            {
                "targets": [4],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "15%"
                ,"render": function (data, type, row, meta) {
                    //console.log(type, data, row,meta);
                    return '<a href="/registry/blacklistmanufacturers/details/'+row["Id"]+'" class="" >' +row["Note"]+'</a>';
                }
            }
            /*,
            {
                "targets": [5],
                "visible": false,
                "searchable": false,
                "orderable": false,
                "width": "5%"
                ,"render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/blacklistmanufacturers/details/'+row[6]+'" class="" >' +data+'</a>';
                }
            },


            {
                "targets": [6],
                "visible": false,
                "searchable": false,
                "orderable": false,
                "width": "7%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="javascript:void(0)"  style="width: 93.91px;"  class="btn btn-app" onclick="ViewСhecking('+data+',event)"><i class="fa fa-edit"></i> Посмотреть</a>';
                }
            }
            */
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
        fnServerParams: function ( aoData ) {
            //aoData.push( { "name": "more_data", "value": "my_value" } );
            /*if(aoData.search.value.length >= 3 ) {
                // Call the API search function
                //dtable.search(this.value).draw();
                //alert("123456");
            }*/
        },

        "stateSave": true,
        "sAjaxSource": "/registry/blacklistmanufacturers/loadAllJSON/",
        "fnServerData": function (sSource, aoData, fnCallback) {
            if (aoData[30].value==="" || aoData[30].value.length >= 1) {
                //aoData[50].value = "";

                $.ajax({
                    "type": "GET",
                    "dataType": 'json',
                    "contentType": "application/json; charset=utf-8",
                    "url": sSource,
                    "data": aoData,
                    "success": function (data) {
                        fnCallback(data);
                    }
                });
            }

        },


        fnRowCallback: function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {


            jQuery(nRow).attr('id', aData[6]);
            // jQuery(nRow).css("cursor", "pointer");

            return nRow;
        }
        /*"columns": [
            { "data": "Reestr_sert_status_id" },
            { "data": "Prod_short_name" },
            { "data": "Org2_name" },
            { "data": "Org2_contact" },
            { "data": "Std" },
            { "data": "Org3_name" },
            { "data": "Org3_contact" },
            { "data": "Id" },
            { "data": "Adm_org_id" }
        ]*/
    });






};

function GetURLParameter(sParam) {
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) {
            return sParameterName[1];
        }
    }
}













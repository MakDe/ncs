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

    // Grab the datatables input box and alter how it is bound to events
   /* $(".dataTables_filter input")
        .unbind() // Unbind previous default bindings
       // .bind("input", function(e) { // Bind our desired behavior
        .on('input',function(e) { // Bind our desired behavior
            // If the length is 3 or more characters, or the user pressed ENTER, search
            if(this.value.length >= 3 || e.keyCode == 13) {
                // Call the API search function
                dtable.search(this.value).draw();
            }
            // Ensure we clear the search if they backspace far enough
            if(this.value == "") {
                dtable.search("").draw();
            }
            return;
        });*/



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
                "data": "Reestr_sert_status_id",
                "targets": [0],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "1%",
                "render": function (data, type, row, meta) {
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
                "data": "Prod_short_name",
                "targets": [1],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "20%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row["Id"]+'" class="" >' +data+'</a>';
                }
            },
            {
                "data": "Org2_name",
                "targets": [2],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "5%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row["Id"]+'" class="" >' +data+'</a>';
                }
            },
            {
                "data": "Org2_contact",
                "targets": [3],
                "visible": false,
                "searchable": true,
                "orderable": false,
                "width": "5%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row["Id"]+'" class="" >' +data+'</a>';
                }
            },
            {
                "data": "Std",
                "targets": [4],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "15%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row["Id"]+'" class="" >' +data+'</a>';
                }
            },
            {
                "data": "Org3_name",
                "targets": [5],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "5%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    14
                    return '<a href="/registry/certificationbodies/details/'+row["Adm_org_id"]+'" target="_blank" class="" >' +data+'</a>';
                    // return '<a href="/registry/certificationbodies/?qname='+data+'" target="_blank" class="" >' +data+'</a>';
                }
            },
            {
                "data": "Org3_contact",
                "targets": [6],
                "visible": false,
                "searchable": true,
                "orderable": false,
                "width": "20%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row[7]+'" class="" >' +data+'</a>';
                }
            },
            {    "data": "Id",
                "targets": [7],
                "visible": false,
                "searchable": false,
                "orderable": false,
                "width": "7%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+data+'"  style="width: 93.91px;"  class="btn btn-app" ><i class="fa fa-edit"></i> Посмотреть</a>';
                }
            },
            {
                "data": "Adm_org_id",
                "targets": [8],
                "visible": false,
                "searchable": false,
                "orderable": false,
                "width": "20%",
                "render": function (data, type, row, meta) {
                    // console.log(type, data, row,meta);
                    return '<a href="/registry/sert/details/'+row[7]+'" class="" >' +data+'</a>';
                }
            },


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
        "sAjaxSource": "/registry/sert/loadAllJSON/",
        "fnServerData": function (sSource, aoData, fnCallback) {
            if (aoData[50].value==="" || aoData[50].value.length >= 1) {
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










/*<!--==========================
     Controls
   ============================-->*/

function init_oksm() {
    $.ajax({
        type: "GET",
        url: "/reestr/sert/oksm/loadAllJSON/",
        success: function(data)
        {
            helpers.buildOKSM(
                // jQuery.parseJSON(data),
                data,
                $('#create_oksm'),
                'Выберите страну'
            );
            helpers.buildOKSM(
                // jQuery.parseJSON(data),
                data,
                $('#edit_oksm'),
                'Выберите страну'
            );
        }
    });
}

function init_CodeTypeProducts() {
    $.ajax({
        type: "GET",
        url: "/reestr/sert/codetypeproducts/loadAllJSON/",
        success: function(data)
        {
            helpers.buildCodeTypeProducts(
                // jQuery.parseJSON(data),
                data,
                $('#create_code_type_products'),
                'Выберите тип'
            );
            helpers.buildCodeTypeProducts(
                // jQuery.parseJSON(data),
                data,
                $('#edit_code_type_products'),
                'Выберите тип'
            );
        }
    });
}



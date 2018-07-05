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
            url :"/registry/documentsnationalstandardizationsystem/loadAllJSON/",
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
                "width": "30%"
                ,"render": function (data, type, row, meta) {
                   // console.log(type, data, row,meta);
                    return '<a href="/registry/documentsnationalstandardizationsystem/details/'+row[3]+'" class="" >' +data+'</a>';
                }
            },
            {
                "targets": [1],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "60%"
                ,"render": function (data, type, row, meta) {
                   // console.log(type, data, row,meta);
                    return '<a href="/registry/documentsnationalstandardizationsystem/details/'+row[3]+'" class="" >' +data+'</a>';
                }
            },
            {
                "targets": [2],
                "visible": true,
                "searchable": true,
                "orderable": true,
                "width": "10%"
                ,"render": function (data, type, row, meta) {
                  //  console.log(type, data, row,meta);
                    return '<a href="/registry/documentsnationalstandardizationsystem/details/'+row[3]+'" class="" >' +data+'</a>';
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
            },
            {
                "targets": [4],
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



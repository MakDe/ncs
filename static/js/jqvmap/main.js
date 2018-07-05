
// Массив всех объектов
var data_obj = {
    'no': ['Объект 1', 'Объект 2'],
    'kr': ['Объект 3', 'Объект 4', 'Объект 5'],
    '25': ['Объект 6', 'Объект 7', 'Объект 8']
};

colorRegion = '#1076C8'; // #1076C8 Цвет всех регионов
focusRegion = '#1076C8'; //FF9900 Цвет подсветки регионов при наведении на объекты из списка
selectRegion = '#0A4C82'; // Цвет изначально подсвеченных регионов


highlighted_states = {};

// Массив подсвечиваемых регионов, указанных в массиве data_obj
/*for(iso in data_obj){
    highlighted_states[iso] = selectRegion;
}*/

$(document).ready(function() {


    $.ajax({
        url : "/statistics/map/loadAllJSON/",
        type : 'get',
        dataType: 'json',
        // traditional: true,
        data: {
            /*id: id*/
        },
        success : function(response) {
            data_obj=response;
        },
        error : function(jqXHR, textStatus, errorThrown) {
           // alert("nss-alert-modal-form: " + textStatus);
        }
    });




    $('#vmap').vectorMap({
        map: 'russia',
        backgroundColor: 'transparent',
        borderColor: '#ffffff',
        borderWidth: 2,
        color: colorRegion,
        colors: highlighted_states,
        hoverOpacity: 0.7,
        enableZoom: true,
        showTooltip: true,

        // Отображаем объекты если они есть
        onLabelShow: function(event, label, code){
            name = '<strong>'+label.text()+'</strong><br>';
            /*if(data_obj[code]){
                list_obj = '<ul>';
                for(ob in data_obj[code]){
                    list_obj += '<li>'+data_obj[code][ob]+'</li>';
                }
                list_obj += '</ul>';
            }else{
                list_obj = '';
            }*/
          var item= data_obj.filter(function (entry){return entry.code === code;});
          if(item.length){
            label.html(name + item[0].organ+'<br>'+ item[0].il+'<br>'+ item[0].public_cert);
            }
            else
          {
              label.html(name);
          }

            //label.html(name);
            //label.html(name + 'Органов по сертификации: 5<br> Испытательных лабораторий: 4 <br> Изготовителей продукции: 15 <br> Выдано сертификатов: 55');
            list_obj = '';
        },
        // Клик по региону
        onRegionClick: function(element, code, region){
           // element.
           // alert(region+' - ' +code);
           // window.location = "/statistics/region/"+code;
        }
    });

});
// Выводим список объектов из массива
$(document).ready(function() {
    /*for(region in data_obj){
        for(obj in data_obj[region]){
            $('.list-object').append('<li><a href="'+selectRegion+'" id="'+region+'" class="focus-region">'+data_obj[region][obj]+' ('+region+')</a></li>');
        }
    }*/
});

// Подсветка регионов при наведении на объекты
$(function(){
    $('.focus-region').mouseover(function(){
        iso = $(this).prop('id');
        fregion = {};
        fregion[iso] = focusRegion;
        $('#vmap').vectorMap('set', 'colors', fregion);
    });
    $('.focus-region').mouseout(function(){
        c = $(this).attr('href');
        cl = (c === '#')?colorRegion:c;
        iso = $(this).prop('id');
        fregion = {};
        fregion[iso] = cl;
        $('#vmap').vectorMap('set', 'colors', fregion);
    });
});

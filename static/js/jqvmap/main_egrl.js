function escapeXml(string) {
    return string.replace(/[<>]/g, function (c) {
        switch (c) {
            case '<':
                return '\u003c';
            case '>':
                return '\u003e';
        }
    });
}

function updateMap(mapName, params, region_click, config) {
    var cfg = config || {};
    $('.jqvmap-label').remove();
    var pins = {};
    var dataObject = {};
    if (params) {
        for (var i = 0; i < params.length; i++) {
            pins[params[i].id] = escapeXml('<div class="value-block">' + params[i].value + '</div>');
            dataObject[params[i].id] =
                '<div class="region-value">Субъектов: ' + params[i].value + '</div>' +
                '<div class="region-value">Работников: ' + params[i].workers + '</div>' +
                '<div class="region-value">Продукции: ' + params[i].tru + '</div>'; 
        }        
    }
    JQVMap.mapIndex = 1;
    $('#vmap').replaceWith("<div id='vmap'></div>");
    var map = $('#vmap').vectorMap({
        name:mapName,
        scale: cfg.scale || 1,
        transX: cfg.transX || 0,
        transY: cfg.transY || 0,
        map: mapName,
        backgroundColor: 'white',
        borderColor: '#000000',
        hoverColor: '#5790C4',
        selectedColor: '#5790C4',
        color:'#B1CBE4',
        borderWidth: cfg.borderWidth || 2,
        pins: pins,
        enableZoom: false,
        showTooltip: true,  
        selectedRegions: cfg.selectedRegions||null,
        onLabelShow: function(event, label, code) {
            var name = '<strong>' + label.text() + '</strong>';							
            label.html(name + (dataObject[code] ? dataObject[code] : ''));
        },
        onRegionClick: function(element, code, region) {
            if ($.isFunction(region_click)) {
                region_click(code, region, map);
            }  
        }
    });
 
    var prevZoomCurStep  = map.zoomCurStep; 
    
    function correctMargin(out) {
        if (map.zoomCurStep != prevZoomCurStep) {
            prevZoomCurStep  = map.zoomCurStep; 
            var k = 1.35;
            for(var i=1; i<92; i++) {
                var el =   $('#jqvmap1_'+ ((i>9)?i:'0' + i) +'_pin');
                var mt = parseFloat(el.css('margin-top'));
                var ml = parseFloat(el.css('margin-left'));
                el.css('margin-top',((out)?mt/k :mt*k ) + 'px');
                el.css('margin-left',((out)?ml/k :ml*k) + 'px');
            }
        }
    }

    map.container.find('.jqvmap-zoomin').click(function() {
        correctMargin(false)
    });  
    map.container.find('.jqvmap-zoomout').click(function() {
        correctMargin(true)
    });  
   // window["CHART_REGION_CODE"] = undefined;
    //window["CHART_REGION_NAME"] = undefined;
    //window['MAP_STATE'] = undefined;
    return map;
}

function updateMainMap(params, region_click) {
    return updateMap('russia_fd_wr', params, region_click, {
        scale:2
    });
}

function updateReturnBtn(regionCode) {
    $('#returnToMainMapBtn').attr("src", "i/russia_" + ((regionCode) ? regionCode + "_" : "") + "map.png?");
}

function updateRegionMap(regionCode, params, region_click, selectedRegions){
    updateReturnBtn(regionCode);
    
    var config = {};
    config.callback = region_click;
    config.animate = false;
    config.selectedRegions = selectedRegions;
    var borderWidth = 2;
    var mapName = "";
    
    if("fd01" == regionCode) {
        config.scale = 4.659832113507185;
        config.transX = -162.5500259399414;
        config.transY = -260.05001068115234;
        mapName = 'russia_centr_fd';
    } else if("fd02" == regionCode) {
        config.scale = 2.498049669269649;
        config.transX = -266.2499008178711;
        config.transY = -206.05001068115234;
        mapName = 'russia_north-west_fd';
    } else if ("fd03" == regionCode) {
        config.scale = 4.642523692200452;
        config.transX = -78.15001153945923;
        config.transY = -339.9500274658203;
        mapName = 'russia_south_fd';
    } else if ("fd04" == regionCode) {
        config.scale = 5.836227263861208;
        config.transX = -70.30000305175781;
        config.transY = -387.1999816894531;
        mapName = 'russia_north-caucasian_fd';
    } else if ("fd05" == regionCode) {
        config.scale = 3.1908154993317575;
        config.transX = -225.19998931884766;
        config.transY = -331.6500015258789;
        mapName = 'russia_volga_fd';
    } else if ("fd06" == regionCode) {
        config.scale = 2.5799815540137185;
        config.transX = -358.84993743896484;
        config.transY = -297.9001007080078;
        mapName = 'russia_ural_fd';
    } else if ("fd07" == regionCode) {
        config.scale = 1.3004039475006353;
        config.transX = -531.4456787109375;
        config.transY = -314.64796447753906;
        mapName = 'russia_siberian_fd';
    } else if ("fd08" == regionCode) {
        config.scale = 1.0473395026045091;
        config.transX = -783.1736145019531;
        config.transY = -291.80005645751953;
        mapName = 'russia_far-east_fd';
    }
    
    var map = updateMap(mapName, params, region_click, {
        borderWidth: borderWidth/config.scale,
        selectedRegions:config.selectedRegions
    });
    map.setScaleExtended(config.scale, config.transX, config.transY, true, false, false);
}
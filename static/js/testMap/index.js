$(document).ready(function () {
    $.getJSON('/static/test/map.json', function (data) {
        var mapData = data;
        var markersCoord = latlong;
        var markers = [];

        $.each(mapData, function (index, value) {
            markers.push({
                latLng: [
                    markersCoord[value.code] ? markersCoord[value.code].lat : false,
                    markersCoord[value.code] ? markersCoord[value.code].lng : false
                ],
                organ: value.organ,
                il: value.il,
                publicCert: value.public_cert,
            });
        });

        $('#map-block').vectorMap({
            map: 'ru_merc',
            backgroundColor: 'transparent',
            regionsSelectable: true,
            regionsSelectableOne: true,
            regionStyle: {
                initial: {
                    fill: '#1076C8',
                    "fill-opacity": 1,
                    stroke: '#68a9dd',
                    "stroke-width": 0.7,
                    "stroke-opacity": 1
                },
                hover: {
                    fill: '#055ca0',
                    "fill-opacity": 1,
                    cursor: 'pointer',
                },
                selected: {
                    fill: '#055ca0',
                },
                selectedHover: {}
            },

            markerStyle: {
                initial: {
                    fill: 'white',
                    stroke: 'black',
                    "fill-opacity": 0.8,
                    "stroke-width": 1.5,
                    "stroke-opacity": 0.6,
                    r: 5
                },
                hover: {
                    stroke: 'black',
                    "stroke-width": 1.5,
                    cursor: 'default'
                },
            },

            markers: markers,

            onRegionTipShow: function (event, label, index) {
                label.html(
                    '<div class="c-map-box">' +
                    label[0].innerText +
                    '</div>'
                );
            },

            onMarkerTipShow: function (event, label, index) {
                label.html(
                    '<div class="c-map-box">' +
                    '<div class="c-map-box__item">' +
                    '<span class="c-map-box__text">Органов по сертификации: </span>' +
                    '<span class="c-map-box__value">' + markers[index].organ + '</span>' +
                    '</div>' +
                    '<div class="c-map-box__item">' +
                    '<span class="c-map-box__text">Испытательных лабораторий: </span>' +
                    '<span class="c-map-box__value">' + markers[index].il + '</span>' +
                    '</div>' +
                    '<div class="c-map-box__item">' +
                    '<span class="c-map-box__text">Сертифицированных объектов: </span>' +
                    '<span class="c-map-box__value">' + markers[index].publicCert + '</span>' +
                    '</div>' +
                    '</div>'
                );
            },

            onRegionClick: function (e, c) {
                $('#map-block').vectorMap('set', 'focus', {regions: [c], animate: true});
            }
        });

        console.log('#map-block');

    });

});

AmCharts.loadFile( "/static/test/map.json", {}, function( dataMap ) {

    var dataMap = AmCharts.parseJSON(dataMap);
    var areas = [];
    var allItemCertificates;
    var targetSVG = "M20.102,5.708l-0.193,9.296h-3.017l-0.24-9.296H20.102z M16.891,17.15h3.017v2.556h-3.017V17.15z M18.375,0   C11.402,0,5.75,5.652,5.75,12.625c0,14.625,12.625,24.125,12.625,24.125S31,25.5,31,12.625C31,5.652,25.348,0,18.375,0z    M18.375,21.239c-4.852,0-8.781-3.933-8.781-8.781s3.931-8.781,8.781-8.781c4.85,0,8.781,3.933,8.781,8.781   S23.227,21.239,18.375,21.239z";

    $.each(dataMap, function( index, value ) {
        allItemCertificates = parseInt(value.organ) + parseInt(value.il) + parseInt(value.public_cert);

        var balloonText =
            '<div class="c-map-wrap">' +
                '<div class="c-map__title">[[title]]</div>' +
                '<div class="c-map__box">' +
                    '<div class="c-map__box-item">' +
                        '<span class="c-map__box-text">Органов по сертификации: </span>' +
                        '<span class="c-map__box-value">' + value.organ + '</span>' +
                    '</div>' +
                    '<div class="c-map__box-item">' +
                        '<span class="c-map__box-text">Испытательных лабораторий: </span>' +
                        '<span class="c-map__box-value">' + value.il + '</span>' +
                    '</div>' +
                    '<div class="c-map__box-item">' +
                        '<span class="c-map__box-text">Сертифицированных объектов: </span>' +
                        '<span class="c-map__box-value">' + value.public_cert + '</span>' +
                    '</div>' +
                '</div>' +
            '</div>';

        var emptyBalloonText =
            '<div class="c-map-wrap">' +
                '<div class="c-map__title">[[title]]</div>' +
            '</div>';

        areas.push({
            id: value.code,
            organ: value.organ,
            il: value.il,
            publicCert: value.public_cert,
            balloonText: allItemCertificates ? balloonText : emptyBalloonText,
            value: allItemCertificates,
            mouseEnabled: !!allItemCertificates,
            images: [
                {
                    svgPath: targetSVG,
                    url: value.url ? value.url : '#',
                    mouseEnabled: value.url,
                    urlTarget: "_blank",
                    centered: true,
                    latitude: latlong[value.code] ? latlong[value.code].latitude : false,
                    longitude: latlong[value.code] ? latlong[value.code].longitude: false,
                    label: 'Подробнее',
                    labelColor: '#d1d1d1',
                    color: '#d1d1d1',
                    labelRollOverColor: '#ffffff',
                    rollOverColor: '#ffffff',
                    labelFontSize: 13,
                    labelPosition: 'bottom',
                }
            ],
        });
    });

    AmCharts.makeChart("map",{
        type: "map",
        projection: "mercator",
        addClassNames: true,
        colorSteps: 4,
        minValue: 1,

        dataProvider: {
            map: "russiaLow",
            areas: areas,
        },
        areasSettings: {
            color: "#1061b2",
            colorSolid: "#000162",
            outlineColor: "#86bbdd",
            outlineThickness: 1,
            rollOverOutlineColor: "#ffffff",
            rollOverBrightness: -20,
            selectedBrightness: -20,
            selectedOutlineColor: "#ffffff",
            autoZoom: true,
        },
        balloon: {
            adjustBorderColor: true,
            borderAlpha: 0,
            color: '#000000',
            cornerRadius: 5,
            fadeOutDuration: 0.15,
            animationDuration: 0.15,
            fillAlpha: 0.95,
            fillColor: '#ffffff',
            fontSize: 13,
            horizontalPadding: 12,
            shadowAlpha: 0,
            textAlign: 'left',
            shadowColor: '#000',
            verticalPadding: 10,
            maxWidth: 250,
            offsetY: 5,
            offsetX: 140,
        },
        zoomControl: {
            zoomControlEnabled: true,
            homeButtonEnabled: true,
            top: 20,
            left: 20,
            minZoomLevel: 0.25,
            gridHeight: 100,
            gridAlpha: 0.2,
            gridBackgroundColor: '#000',
            draggerAlpha: 1,
            buttonCornerRadius: 2,
        },
    });

});

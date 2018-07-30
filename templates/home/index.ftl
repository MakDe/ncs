<!--==========================
      Services Section
    ============================-->
<link rel="stylesheet" href="/static/js/testMap/jquery-jvectormap-2.0.3.css" type="text/css">

<style>
    .jvectormap-region {
        transition: fill .15s;
    }
    .jvectormap-marker {
        transition: stroke .15s, stroke-width .15s, fill .15s;
    }
</style>

    <section id="services" class="c-map-block">
        <#--<div class="c-map" id="vmap"></div>-->
        <div class="c-map" id="map"></div>
        <div class="c-map-items">
            <a href="/registry/sert" class="c-map-items__item">
                <h3 class="c-map-items__title">Сертифицированных объектов</h3>
                <p class="c-map-items__descr">
                    ${context.reestr_sert}
                </p>
            </a>
            <a href="/registry/certificationbodies" class="c-map-items__item">
                <h3 class="c-map-items__title">Органов по сертификации</h3>
                <p class="c-map-items__descr">
                    ${context.certificationbodies}
                </p>
            </a>
            <a href="/registry/testinglaboratories" class="c-map-items__item">
                <h3 class="c-map-items__title">Испытательных лабораторий</h3>
                <p class="c-map-items__descr">
                    ${context.laboratory}
                </p>
            </a>
        </div>
    </section>
<!-- #services -->

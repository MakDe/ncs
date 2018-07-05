<!--==========================
      Services Section
    ============================-->
    <section id="services">
        <div class="container">
            <div class="row">
<style>
    .jqvmap-zoomin, .jqvmap-zoomout {
        width: 20px;
        height: 20px;
        vertical-align: middle;

        line-height: 15px;
    }


    .jqvmap-zoomin {
        background-image:url('/static/zoom-in.png');
        background-repeat: no-repeat;
        background-size: 25px 40px;
        width: 25px;
        height: 40px;
        position: absolute;
        top:0; left:0; z-index:500;
        background-color: transparent;
    }


    .jqvmap-zoomout {
        background-image:url('/static/zoom-out.png');
        background-repeat: no-repeat;
        background-size: 25px 40px;
        width: 25px;
        height: 40px;
        position: absolute;
        top: 60px; left:0; z-index:500;
        background-color: transparent;
    }


    #footer {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        height: 80px;
    }
    @media (min-width: 799px) {
        #stat{
            left:50px;
        font-size: 12px;
        position: relative;
        font-weight: bold;

    }

        #txtStatWorkerTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 10px; font-weight: bold;
            text-align: center;
        }
        #txtStatProductionTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 10px; font-weight: bold;
            text-align: center;
        }


    }
    @media (min-width: 992px){
        #txtStatWorkerTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 12px; font-weight: bold;
            text-align: center;
        }
        #txtStatProductionTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 12px; font-weight: bold;
            text-align: center;
        }

    }
    @media (min-width: 1200px){
        #stat{
            left:50px;
            font-size: 18px;
            position: relative;
            font-weight: bold;

        }

        #txtStatWorkerTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 18px; font-weight: bold;
            text-align: center;
        }
        #txtStatProductionTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 18px; font-weight: bold;
            text-align: center;
        }
        .txt-stat-value{
            font-size: 24px; font-weight: bold;
            vertical-align: middle;
        }
        #vmap{
            width: 1000px; height: 500px;
        }

    }

</style>

                <div id="vmap" style=""></div>
            </div>
        </div>
    </section>

 <section id="aaa">
     <div class="container">
         <div class="row">
             <div class="col-lg-4">
                    <span id="txtStatWorkerTotal" class="has-tooltip">
                <span class="txt-stat-caption">Сертифицированных объектов:</span><br>
                <span class="txt-stat-value">${context.reestr_sert}</span>
             </div>
             <div class="col-lg-4"><span id="txtStatProductionTotal">
                <span class="txt-stat-caption">Органов по сертификации:</span><br>
                <span class="txt-stat-value">${context.certificationbodies}</span>
                </span></div>
             <div class="col-lg-4"><span id="txtStatProductionTotal">
                <span class="txt-stat-caption">Испытательных лабораторий:</span><br>
                <span class="txt-stat-value">${context.laboratory}</span>
                </span></div>
         </div>
     </div>
 </section>

<!-- #services -->
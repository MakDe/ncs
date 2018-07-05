
<section id="clients" class="wow fadeInUp">
    <div class="container">
        <div class="section-header">
            <div class="row">
                <div class="col-lg-11"><h2>Реестр объектов оценки соответствия, маркированных знаком национальной системы стандартизации</h2>
            <p></p>

                </div>
                <div class="col-lg-1"><img id="znakrst" src="/static/znak_green.svg" alt="Знак НСС" class="znakimg" style="width: 140px; height: 73px;"></div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <style>


                    #clients .znakimg {
                        max-width: 120%;
                        opacity: 1;
                        transition: 0s;
                        padding: 15px 0;
                    }

                    @media (max-width: 767px){
                        #clients .znakimg {
                            display: none;
                        }
                    }

                    #datatable th{
                        text-align: center;
                    }
                </style>


                        <table id="datatable" class="table table-striped table-bordered dataTable no-footer dtr-inline" style="width: 100%; background-color: #FFFFFF">
                            <thead>
                            <tr>
                                <th>Статус</th>
                                <th>Наименование продукции</th>
                                <th>Наименование изготовителя</th>
                                <th>Контактные данные изготовителя</th>
                                <th>Требование национального стандарта</th>
                                <th>Орган по сертификации</th>
                                <th>Контактные данные органа по сертификации</th>



                                <th></th>
                                <th></th>
                            </tr>
                            </thead>


                        </table>
                <style>
                    /* legend */

                    .legend {
                        float: left;
                        height: 20px;
                    }

                    .legend span{
                        margin-right: 10px;
                        line-height: 20px;
                    }

                    .legend span.status-ico {
                        margin-right: 4px;
                    }

                    .status-ico {
                        padding: 0px;
                        margin-right: 4px;
                        line-height: 16px;
                    }

                    .status-ico.red {
                        background: url("/static/images/legend/red.png") center center no-repeat;
                    }

                    .status-ico.blue {
                        background: url("/static/images/legend/blue.png") center center no-repeat;
                    }

                    .status-ico.green {
                        background: url("/static/images/legend/green.png") center center no-repeat;
                    }

                    .status-ico.orange {
                        background: url("/static/images/legend/orange.png") center center no-repeat;
                    }

                    .status-ico.purple {
                        background: url("/static/images/legend/purple.png") center center no-repeat;
                    }

                    .status-ico.sgreen {
                        background: url("/static/images/legend/sgreen.png") center center no-repeat;
                    }

                    .status-ico.lorange {
                        background: url("/static/images/legend/lorange.png") center center no-repeat;
                    }

                    .status-ico.gray {
                        background: url("/static/images/legend/gray.png") center center no-repeat;
                    }
                </style>
                <div class="legend">
                    <span>Статус:&nbsp;</span>
                    <span class="status-ico green">&nbsp;&nbsp;&nbsp;</span><span>Действует/Возобновлен</span>
                    <span class="status-ico orange">&nbsp;&nbsp;&nbsp;</span><span>Приостановлен</span>

                    <span class="status-ico red">&nbsp;&nbsp;&nbsp;</span><span>Аннулирован</span>
                    <span class="status-ico purple">&nbsp;&nbsp;&nbsp;</span><span>Архивный</span>

                </div>

            </div>
        </div>

    </div>




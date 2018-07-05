
<section id="clients" class="wow fadeInUp">
    <div class="container">
        <div class="section-header">
            <h2>Реестр испытательных лабораторий.</h2>
            <p></p>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <style>
                    #datatable th{
                        text-align: center;
                    }
                </style>

                <table id="datatable" class="table table-striped table-bordered dataTable no-footer dtr-inline" style="width: 100%; background-color: #FFFFFF">
                    <thead>
                    <tr>
                        <th>Статус</th>
                        <th>Наименование</th>
                        <th>Местонахождение</th>
                        <th>Контактные данные</th>
                        <th>ФИО руководителя</th>
                        <th>область аккредитации</th>

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
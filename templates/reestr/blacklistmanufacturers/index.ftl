<style>
    #footer {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        height: 80px;
    }

</style>

<section id="clients" class="wow fadeInUp">
    <div class="container">
        <div class="section-header">
            <h2>Реестр продукции, маркированной знаком национальной системы стандартизации, соответствие которой требованиям национальных стандартов не подтверждено</h2>
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
                        <th>Дата внесения в реестр</th>
                        <th>Наименование продукции</th>
                        <th>Наименование изготовителя</th>
                        <th>Примечание*</th>
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
                    <span>* причина внесения информации о продукции и изготовителе продукции в настоящий реестр</span>


                </div>

            </div>
        </div>

    </div>
<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp" style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.inspectionbodies.getYur_name()}</h2>
                <p>${context.inspectionbodies.getYur_fullname()}</p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>

                        <dt>Наименование органа инспекции</dt>
                        <dd>${context.inspectionbodies.getYur_name()}</dd>
                        <dt>Местонахождение органа инспекции</dt>
                        <dd>${context.inspectionbodies.getYur_fiz_addr_zipcode()} ${context.inspectionbodies.getYur_fiz_addr()}</dd>
                        <dt>Номер(а) телефона органа инспекции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.inspectionbodies.getYur_phone()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес(а) электронной почты органа инспекции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.inspectionbodies.getYur_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес сайта органа инспекции</dt>
                        <dd>${context.inspectionbodies.getYur_www()}</dd>
                        <dt>ФИО руководителя органа инспекции</dt>
                        <dd>${context.inspectionbodies.getYur_fio_seo()}</dd>
                        <dt>Область аккредитации</dt>
                        <dd>${context.inspectionbodies.getScope_accreditation()}</dd>
                    </dl>
                </div>
            </div>

        </div>
    </section>
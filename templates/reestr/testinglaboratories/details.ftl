<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp"  style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.reestrLaboratories.getLab_name()}</h2>
                <p></p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>

                        <dt>Наименование испытательной лаборатории</dt>
                        <dd>${context.reestrLaboratories.getLab_name()}</dd>
                        <dt>Местонахождение испытательной лаборатории</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrLaboratories.getLab_fiz_addr()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Номер(а) телефона испытательной лаборатории</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrLaboratories.getLab_yur_phone()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адреса электронной почты испытательной лаборатории</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrLaboratories.getLab_yur_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес сайта испытательной лаборатории</dt>
                        <dd>${context.reestrLaboratories.getLab_yur_www()}</dd>
                        <dt>ФИО руководителя испытательной лаборатории</dt>
                        <dd>${context.reestrLaboratories.getLab_fio_seo()}</dd>
                        <dt>Область аккредитации</dt>
                        <dd>${context.reestrLaboratories.getScope_accreditation()}</dd>

                    </dl>
                </div>
            </div>

        </div>
    </section>
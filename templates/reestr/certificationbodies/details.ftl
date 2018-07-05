<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp" style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.certificationBodies.getBody_name()}</h2>
                <p></p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>

                        <dt>Наименование органа по сертификации</dt>
                        <dd>${context.certificationBodies.getBody_name()}</dd>
                        <dt>Местонахождение органа по сертификации</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.certificationBodies.getBody_fiz_addr()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Номер(а) телефона органа по сертификации</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.certificationBodies.getBody_yur_phone()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адреса электронной почты органа по сертификации</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.certificationBodies.getBody_yur_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес сайта органа по сертификации</dt>
                        <dd>${context.certificationBodies.getBody_yur_www()}</dd>
                        <dt>ФИО руководителя органа по сертификации</dt>
                        <dd>${context.certificationBodies.getBody_fio_seo()}</dd>
                        <dt>Область аккредитации</dt>
                        <dd>${context.certificationBodies.getScope_accreditation()}</dd>

                    </dl>
                </div>
            </div>

        </div>
    </section>
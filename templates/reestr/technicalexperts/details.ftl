<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp"  style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.technicalexperts.getFio()}</h2>
                <p></p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>

                        <dt>Фамилия, Имя, Отчество</dt>
                        <dd>${context.technicalexperts.getFio()}</dd>

                        <dt>Номер(a) телефона</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.technicalexperts.getExpert_phone()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адреса электронной почты</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.technicalexperts.getExpert_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>область специализации</dt>
                        <dd>${context.technicalexperts.getArea_specialization()}</dd>

                    </dl>
                </div>
            </div>

        </div>
    </section>
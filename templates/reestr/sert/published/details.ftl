<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp" style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.reestrSert.getCertificateNumber()}  </h2>
                <p>${context.reestrSert.getProd_short_name()}</p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>

                        <dt>Наименование продукции</dt>
                        <dd>${context.reestrSert.getProd_name()}</dd>
                        <dt>Наименование изготовителя продукции</dt>
                        <dd>${context.reestrSert.getOrg2_name()}</dd>
                        <dt>Номер(а) телефона изготовителя продукции</dt>
                    <dd>
                    <#if context.reestrSert.getOrg2_phone()??>
                        <ul>
                        <#foreach item in context.reestrSert.getOrg2_phone()>
                           <li>${item!"Unknown"}1</li>
                        </#foreach>
                        </ul>
                    </#if>

                    </dd>
                        <dt>Адреса электронной почты изготовителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getOrg2_email()>
                           <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес сайта изготовителя</dt>
                        <dd>${context.reestrSert.getOrg2_www()}</dd>
                        <dt>Местонахождение изготовителя (Фактический адрес изготовителя продукции)</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getOrg2_addr_f()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>



                        <dt> Национальные стандарты на соответствие которым проводилась сертификация</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getStd()>
                           <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Наименование органа по сертификации</dt>
                        <dd>${context.reestrSert.getOrg3_name()}</dd>
                        <dt>Номер(а) телефона органа по сертификации</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getOrg3_phone()>
                           <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адреса электронной почты органа по сертификации</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getOrg3_email()>
                           <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Адрес сайта органа по сертификации</dt>
                        <dd>${context.reestrSert.getOrg3_www()}</dd>
                        <dt>Местонахождение органа по сертификации (Фактический адрес органа по сертификации)</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.reestrSert.getOrg3_addr_f()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>




                    </dl>
                </div>
            </div>

        </div>
    </section>
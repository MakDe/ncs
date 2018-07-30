<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp" style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.blackListManufacturers.getProd_name()}</h2>
                <p>Статус: <strong>${context.blackListManufacturers.getReestr_status_name()}</strong></p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <h3>Сведения об распространителе продукции</h3>
                    <dl>

                        <dt>Наименование распространителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg5_name()}</dd>
                        <dt>ОКПО распространителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg5_okpo()} </dd>
                        <dt>Сведения о государственной регистрации распространителя продукции (ОГРН/ОГРНИП)</dt>
                        <dd>${context.blackListManufacturers.getOrg5_reg()}</dd>
                        <dt>ИНН распространителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg5_inn()} </dd>
                        <dt>Юридический адрес распространителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg5_addr_y_zipcode()} ${context.blackListManufacturers.getOrg5_addr_y()}</dd>
                        <dt>Фактический адрес распространителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg5_addr_f()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Номер телефона распространителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg5_phone()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Адрес электронной почты распространителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg5_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Адрес сайта распространителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg5_www()}</dd>


                    </dl>
                    <h3>Сведения об Изготовителе продукции</h3>
                    <dl>

                        <dt>Наименование изготовителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg2_name()}</dd>
                        <dt>ОКПО изготовителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg2_okpo()}</dd>
                        <dt>Сведения о государственной регистрации изготовителя продукции (ОГРН/ОГРНИП)</dt>
                        <dd>${context.blackListManufacturers.getOrg2_reg()}</dd>
                        <dt>ИНН изготовителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg2_inn()}</dd>
                        <dt>Юридический адрес изготовителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg2_addr_y_zipcode()} ${context.blackListManufacturers.getOrg2_addr_y()}</dd>
                        <dt>Фактический адрес изготовителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg2_addr_f()>
                            <li>${item!"Unknown"}1</li>
                        </#foreach>
                            </ul>
                        </dd>
                        <dt>Номер телефона изготовителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg2_phone()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Адрес электронной почты изготовителя продукции</dt>
                        <dd>
                            <ul>
                        <#foreach item in context.blackListManufacturers.getOrg2_email()>
                            <li>${item!"Unknown"}</li>
                        </#foreach>
                            </ul>
                        </dd>

                        <dt>Адрес сайта изготовителя продукции</dt>
                        <dd>${context.blackListManufacturers.getOrg2_www()}</dd>

                    </dl>
                    <h3>Примечание</h3>
                    <dl>


                        <dd>${context.blackListManufacturers.getNote()}</dd>


                    </dl>
                </div>
            </div>

        </div>
    </section>
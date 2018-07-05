<!--==========================
  Clients Section
============================-->

    <section id="clients" class="wow fadeInUp"  style="background-color:#ffffff;">
        <div class="container">
            <div class="section-header">
                <h2>${context.documentsnationalstandardizationsystem.getA02()}</h2>
                <p>${context.documentsnationalstandardizationsystem.getA02_FULL()}</p>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <dl>
                        <dt>Обозначение стандарта</dt>
                        <dd>${context.documentsnationalstandardizationsystem.getA02()}</dd>
                        <dt>Заглавие стандарта на русском языке</dt>
                        <dd>${context.documentsnationalstandardizationsystem.getA03()} </dd>

                        <dt>Статус стандарта</dt>
                        <dd>${context.documentsnationalstandardizationsystem.getA90()}</dd>
                        <dt>Сведения о регистрации стандарта</dt>
                        <dd>${context.documentsnationalstandardizationsystem.getA06()} от ${context.documentsnationalstandardizationsystem.getA07()}</dd>



                    </dl>
                </div>
            </div>

        </div>
    </section>
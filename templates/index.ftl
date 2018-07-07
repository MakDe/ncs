


<#include "header.ftl">

<div class="row">

    <div class="col-md-12 mt-1">
        <div class="float-xs-right">
            <form class="form-inline" action="/create" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="name" name="name" placeholder="New page name">
                </div>
                <button type="submit" class="btn btn-primary">Create</button>
            </form>
        </div>
        <h1 class="display-4">${context.title}</h1>
    </div>

    <div class="col-md-12 mt-1">

    </div>

</div>

Hello ${context.name}!
Request path is ${context.request().path()}

<#include context.bodycontent>

<#include "footer.ftl">
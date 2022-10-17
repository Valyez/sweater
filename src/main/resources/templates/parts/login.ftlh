<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> User Name: </label>
            <input class="form-control col-sm-9" type="text" name="username" placeholder="Enter your username"/>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Password: </label>
            <input type="password" class="form-control col-sm-9" name="password" placeholder="Enter your password"/>
        </div>
        <#if !isRegisterForm><a href="/registration"> Add new user</a></#if>
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign In</#if></button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>

</#macro>
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Sing out</button>
    </form>
</#macro>


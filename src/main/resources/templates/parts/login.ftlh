<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name: </label>
            <div class="col-sm-5">
                <input class="form-control" type="text" name="username" placeholder="Enter your username"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" class="form-control " name="password" placeholder="Enter your password"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Email: </label>
                <div class="col-sm-5">
                    <input type="email" class="form-control " name="email" placeholder="Enter your Email"/>
                </div>
            </div>
        </#if>
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


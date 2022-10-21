<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    ${(message)!}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" class="form-control " name="password" placeholder="Enter new password"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Email: </label>
            <div class="col-sm-5">
                <input type="email" class="form-control " name="email" placeholder="Write you'r new email"
                       value="${email!''}"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</@c.page>

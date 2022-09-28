<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>
    <div>Messages list</div>

    <form method="post" enctype="multipart/form-data">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="text" name="text" placeholder="Write message"/>
        <input type="text" name="tag" placeholder="Tag">
        <input type="file" name="file ">
        <button type="submit">Submit</button>
    </form>

    <form method="get" action="/main">
        <input type="text" name="filter" value="${(filter)!}">
        <button type="submit">Find</button>
    </form>

    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" alt="">
                </#if>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</@c.page>
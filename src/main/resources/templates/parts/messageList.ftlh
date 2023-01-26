<#include "security.ftlh">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img class="card-img-top" src="/img/${message.filename}" alt="Card image cap">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user/userProfile-${message.author.id}">
                    <#if message.author.id == currentUserId>
                        You
                    <#else>
                    ${message.authorName}
                    </#if>
                </a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/main?messageId=${message.id}">Edit</a>
                </#if>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>
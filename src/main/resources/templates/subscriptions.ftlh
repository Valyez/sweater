<#import "parts/common.ftlh" as c>

<@c.page>
    <h3>${userChannel.username}</h3>
    <div>${type}</div>
    <ul class="list-group">
        <#list users as user>
            <li class="list-group-item">
                <a href="/user/userProfile-${user.id}">${user.username}</a>
            </li>
        </#list>
    </ul>
</@c.page>
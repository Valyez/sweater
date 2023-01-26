<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container my-3">
        <div class="row">
            <div>
                <h3>${userChannel.username}</h3>
                <#if avatarFilename??>
                    <img class="round" src="/img/${avatarFilename}">
                <#else>
                    <img class="round" src="/img/default.jpeg">
                </#if>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text">
                            <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text">
                            <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if !isCurrentUser>
        <#if isSubscriber>
            <a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        <#else>
            <a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>
    </#if>
    <#if isCurrentUser>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseSettings" role="button" aria-expanded="false"
           aria-controls="collapseSettings">
            Settings
        </a>
        <div class="collapse" id="collapseSettings">
            <div class="form-group mt-3">
                <form method="post" enctype="multipart/form-data">
                    <div class="container">
                        <div class="row">
                            <div class="col-10">
                                <div class="form-group row ">
                                    <label class="col-sm-2 col-form-label"> Password: </label>
                                    <div class="col-sm-5">
                                        <input type="password" class="form-control " name="password"
                                               placeholder="Enter new password"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"> Email: </label>
                                    <div class="col-sm-5">
                                        <input type="email" class="form-control " name="email"
                                               placeholder="Write you'r new email"
                                               value="${email!''}"/>
                                    </div>
                                </div>
                                <div class="form-group col-7">
                                    <div class="custom-file">
                                        <div class="col-sm-7">
                                            <input type="file" class="" name="file" id="customFile">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </#if>

    <#include "parts/messageList.ftlh" />
</@c.page>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>版块内容</title>
    <link rel="stylesheet" href="../../resources/css/material-icons.css">
    <link rel="stylesheet" href="../../resources/css/material.min.css">
    <script type="text/javascript" src="../../resources/js/material.min.js"></script>
    <script type="text/javascript" src="../../resources/js/jquery-3.1.1.min.js"></script>
    <style>
        .card-width {
            width: 600px;
        }
        .clear-height {
            min-height: auto;
        }
        .center {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
<!-- Uses a header that scrolls with the text, rather than staying
  locked at the top -->
<div class="mdl-layout mdl-js-layout">
    <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--grey-50">
        <div class="mdl-layout__header-row">
            <!-- Title -->
            <a class="mdl-layout-title mdl-navigation__link mdl-color-text--pink-400" href="/main">${board.boardName}</a>
            <!-- Add spacer, to align navigation to the right -->
            <div class="mdl-layout-spacer"></div>
            <!-- Navigation -->
            <nav class="mdl-navigation">
                <c:choose>
                    <c:when test="${username != null}">
                        <a class="mdl-navigation__link mdl-color-text--pink-400" href="/user/listUserInfo?username=${username}">${username}</a>
                        <c:if test="${username == 'admin'}">
                            <a class="mdl-navigation__link mdl-color-text--black" href="/admin/manageCenter">登入管理后台</a>
                        </c:if>
                        <a class="mdl-navigation__link mdl-color-text--black" href="/addPost?userName=${username}&boardId=${boardId}">
                            发布新主题
                        </a>
                        <a class="mdl-navigation__link mdl-color-text--black" href="/user/loginOut">注销</a>
                    </c:when>
                    <c:when test="${username == null}">
                        <a class="mdl-navigation__link mdl-color-text--pink-400" href="/userLogin">登录 </a>
                        <a class="mdl-navigation__link mdl-color-text--pink-400" href="/userRegister">注册</a>
                    </c:when>
                </c:choose>
            </nav>
        </div>
    </header>
    <main class="mdl-layout__content" style="background-image: url(../../resources/img/strategy.png);background-position:center;background-repeat: repeat">
        <div  class="page-content">
            <c:forEach items="${board.posts}" var="post" varStatus="status">
                <c:if test="${post.postIfTop != 0}">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--3-col"></div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="card-width clear-height center mdl-card mdl-shadow--2dp" style="background-image: url('../resources/img/${board.boardId}.png');background-size:72.5%;background-repeat: repeat">
                                <div class="mdl-card__title">
                                    <c:choose>
                                        <c:when test="${post.postIfBest != 0}">
                                            <img width="8%" height="8%" src="../../resources/img/精.png" alt="精">精！
                                        </c:when>
                                    </c:choose>
                                    <h4 class="mdl-color-text--pink-400">
                                        <a href="/post/postContent-${post.postId}">${post.postTitle}</a>
                                    </h4>
                                    <c:if test="${post.postIfTop !=0}">
                                        <p style="color:blue;">置顶</p>
                                    </c:if>
                                </div>
                                <div class="mdl-card__supporting-text">
                                    <div class="mdl-grid">
                                        <div class="mdl-cell--2-col" align="left" onclick="window.location.href='/user/listUserInfo?username=${post.postUserName}';return false">
                                                ${post.postUserName}
                                        </div>
                                        <div class="mdl-cell--4-offset"></div>
                                        <div class="mdl-cell--4-offset"></div>
                                    </div>
                                </div>
                                <c:choose>
                                    <c:when test="${username != null && username == 'admin'}">
                                        <div class="mdl-card__actions mdl-card--border">
                                            <p class="mdl-navigation__link" align="right">点击：${post.postViewCount} 回复：${post.postReplyCount}</p>
                                            <a class="mdl-button mdl-js-button mdl-color-text--pink-400"
                                               href="/admin/deletePost?postId=${post.postId}&postBoardId=${post.postBoardId}" align="right">删除</a>
                                        </div>
                                    </c:when>
                                    <c:when test="${username != 'admin'}">
                                        <div class="mdl-card__actions mdl-card--border">
                                            <p class="mdl-navigation__link" align="right">点击：${post.postViewCount} 回复：${post.postReplyCount}</p>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--3-col"></div>
                    </div>
                </c:if>
            </c:forEach>
            <c:forEach items="${board.posts}" var="post" varStatus="status">
                <c:if test="${post.postIfTop == 0}">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--3-col"></div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="card-width clear-height center mdl-card mdl-shadow--2dp" style="background-image: url('../resources/img/${board.boardId}.png');background-size:72.5%;background-repeat: repeat">
                                <div class="mdl-card__title">
                                    <c:choose>
                                        <c:when test="${post.postIfBest != 0}">
                                            <img width="8%" height="8%" src="../../resources/img/精.png" alt="精">精！
                                        </c:when>
                                    </c:choose>
                                    <h4 class="mdl-color-text--pink-400">
                                        <a href="/post/postContent-${post.postId}">${post.postTitle}</a>
                                    </h4>
                                    <c:if test="${post.postIfTop !=0}">
                                        <p style="color:blue;">置顶</p>
                                    </c:if>
                                </div>
                                <div class="mdl-card__supporting-text">
                                    <div class="mdl-grid">
                                        <div class="mdl-cell--2-col" align="left" onclick="window.location.href='/user/listUserInfo?username=${post.postUserName}';return false">
                                                ${post.postUserName}
                                        </div>
                                        <div class="mdl-cell--4-offset"></div>
                                        <div class="mdl-cell--4-offset"></div>
                                    </div>
                                </div>
                                <c:choose>
                                    <c:when test="${username != null && username == 'admin'}">
                                        <div class="mdl-card__actions mdl-card--border">
                                            <p class="mdl-navigation__link" align="right">点击：${post.postViewCount} 回复：${post.postReplyCount}</p>
                                            <a class="mdl-button mdl-js-button mdl-color-text--pink-400"
                                               href="/admin/deletePost?postId=${post.postId}&postBoardId=${post.postBoardId}" align="right">删除</a>
                                        </div>
                                    </c:when>
                                    <c:when test="${username != 'admin'}">
                                        <div class="mdl-card__actions mdl-card--border">
                                            <p class="mdl-navigation__link" align="right">点击：${post.postViewCount} 回复：${post.postReplyCount}</p>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--3-col"></div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </main>
</div>
</body>
</html>
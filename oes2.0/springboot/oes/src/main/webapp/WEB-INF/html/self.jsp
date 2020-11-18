<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="fun.afterglow.oes.global.Contant" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 个人信息 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 基本信息 </span>
                    </div>
                    <div class="section row">
                        <c:if test="${sessionScope.presonnel.roles==Contant.ROLES_TEACHER||sessionScope.presonnel.roles==Contant.ROLES_ADMIN}">
                            <div class="col-md-2">工号</div>
                            <div class="col-md-4">${sessionScope.presonnel.number}</div>
                        </c:if>
                        <c:if test="${sessionScope.presonnel.roles==Contant.ROLES_STUDENT}">
                            <div class="col-md-2">学号</div>
                            <div class="col-md-4">${sessionScope.presonnel.number}</div>
                        </c:if>
                        <div class="col-md-2">姓名</div>
                        <div class="col-md-4">${sessionScope.presonnel.name}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">班级</div>
                        <div class="col-md-4">${sessionScope.presonnel.classSubject}</div>
                        <div class="col-md-2">角色</div>
                        <div class="col-md-4">${sessionScope.presonnel.roles}</div>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>


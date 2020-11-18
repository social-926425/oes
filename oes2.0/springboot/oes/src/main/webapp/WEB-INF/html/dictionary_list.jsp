<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="fun.afterglow.oes.global.Contant" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 题库列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="row">
            <div class="col-md-6">
                <c:if test="${parent.pId!=0}">
                    返回上一级 ：<a href="/dictionary/list?pId=${parent.pId}">${parent.cnName}</a>
                </c:if>
                当前路径 : ${parent.namePath}
            </div>
            <div class="col-md-6">
                父分类&nbsp;&nbsp;中文名:${parent.cnName}&nbsp;&nbsp;&nbsp;&nbsp;英文名：${parent.enName}
            </div>
        </div>
        <div class="admin-form theme-primary center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh"
                                       onclick="javascript:window.location.href='/dictionary/list?pId=${parent.id}'"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus"
                                       onclick="javascript:window.location.href='/dictionary/to_add?pId=${parent.id}';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="hidden-xs">路径</th>
                            <th class="hidden-xs">中文名</th>
                            <th class="hidden-xs">英文名</th>
                            <th class="hidden-xs">code</th>
                            <th class="hidden-xs">value</th>
                            <th class="hidden-xs">attribute1</th>
                            <th class="hidden-xs">attribute2</th>
                            <th class="hidden-xs">attribute3</th>
                            <th class="hidden-xs">state</th>
                            <th class="hidden-xs">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${dictionary_list}" var="list">
                            <tr class="message-unread">
                                <td>${list.namePath}</td>
                                <td><a href="/dictionary/list?pId=${list.id}">${list.cnName}</a></td>
                                <td><a href="/dictionary/list?pId=${list.id}">${list.enName}</a></td>
                                <td>${list.code}</td>
                                <td>${list.value}</td>
                                <td>${list.attribute1}</td>
                                <td>${list.attribute2}</td>
                                <td>${list.attribute3}</td>
                                <td class="hidden-xs">
                                    <span class="badge badge-warning mr10 fs11"> ${list.state}</span>
                                </td>
                                <td>
                                    <a href="/dictionary/to_update?id=${list.id}">编辑</a>
                                    <a href="/dictionary/to_detail?id=${list.id}">详情</a>
                                    <a href="/dictionary/remove?id=${list.id}&pId=${list.pId}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="bottom.jsp"/>

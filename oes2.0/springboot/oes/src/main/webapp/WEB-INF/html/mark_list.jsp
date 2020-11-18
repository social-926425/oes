<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="fun.afterglow.oes.global.Contant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>


<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 试卷列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
<%--                        <div class="hidden-xs hidden-sm col-md-3">--%>
<%--                            <div class="btn-group">--%>
<%--                                <button type="button" class="btn btn-default light">--%>
<%--                                    <i class="fa fa-refresh" onclick="javascript:window.location.href='/mark/result';"></i>--%>
<%--                                </button>--%>
<%--&lt;%&ndash;                                <button type="button" class="btn btn-default light">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <i class="fa fa-trash"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <button type="button" class="btn btn-default light">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <i class="fa fa-plus"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                       onclick="javascript:window.location.href='/presonnel/to_add';"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </button>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                        </div>--%>
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
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">考试时间</th>
                            <th class="hidden-xs">批阅时间</th>
                            <th class="hidden-xs">考试成绩</th>
                            <th class="hidden-xs">状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sublist}" var="list">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <label class="option block mn">
                                        <input type="checkbox" name="mobileos" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td><fmt:formatDate value="${list.createDate}" pattern="yyyy-HH-dd HH:mm"/></td>
                                <td><fmt:formatDate value="${list.updateDate}" pattern="yyyy-HH-dd HH:mm"/></td>
                                <td>${list.totalScore}</td>
                                <td class="hidden-xs">
                                    <span class="badge badge-warning mr10 fs11"> ${list.status}</span>
                                </td>
                                <td>
                                    <c:if test="${list.status!=Contant.REVIEW}">
                                        <a href="/mark/to_deal?id=${list.id}">批阅</a>
                                    </c:if>
                                    <c:if test="${list.status==Contant.REVIEW}">
                                        <a href="/my_exam/detail?id=${list.id}">详情</a>
                                    </c:if>
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

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
        <div class="admin-form theme-primary center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus"
                                       onclick="javascript:window.location.href='/bank/to_option_add';"></i>
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
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">题目</th>
                            <th class="hidden-xs">选项A</th>
                            <th class="hidden-xs">选项B</th>
                            <th class="hidden-xs">选项C</th>
                            <th class="hidden-xs">选项D</th>
                            <th class="hidden-xs">答案</th>
                            <th class="hidden-xs">题型</th>
                            <th class="hidden-xs">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="bank">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <label class="option block mn">
                                        <input type="checkbox" name="mobileos" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td>${bank.topice}</td>
                                <td>${bank.optionA}</td>
                                <td>${bank.optionB}</td>
                                <td>${bank.optionC}</td>
                                <td>${bank.optionD}</td>
                                <td>${bank.answer}</td>
                                <td class="hidden-xs">
                                    <span class="badge badge-warning mr10 fs11"> ${bank.questionType}</span>
                                </td>
                                <td>

                                    <c:if test="${bank.questionType==Contant.OPTION||bank.questionType==Contant.OPTIONS}">
                                        <a href="/bank/to_option_update?id=${bank.id}">编辑</a>
                                    </c:if>
                                    <c:if test="${bank.questionType==Contant.SUBJECTIVE}">
                                        <a href="/bank/to_sub_update?id=${bank.id}">编辑</a>
                                    </c:if>
                                    <a href="/bank/to_detail?id=${bank.id}">详情</a>
                                    <a href="/bank/remove?id=${bank.id}">删除</a>
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

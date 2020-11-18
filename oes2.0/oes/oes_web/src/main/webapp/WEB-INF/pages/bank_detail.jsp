<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="oes.global.Contant" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 题目详情 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 题目信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">题目:${questionBank.topice}</div>
                    </div>
                    <c:if test="${questionBank.questionType==Contant.OPTION||questionBank.questionType==Contant.OPTIONS}">
                        <div class="section row">
                            <div class="col-md-12">A:${questionBank.optionA}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">B:${questionBank.optionB}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">C:${questionBank.optionC}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">D:${questionBank.optionD}</div>
                        </div>
                    </c:if>
                    <div class="section row">
                        <div class="col-md-12">答案:${questionBank.answer}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">题型:${questionBank.questionType}</div>
                        <div class="col-md-4"></div>
                        <div class="col-md-2">分值:${questionBank.score}</div>
                    </div>
                    <div class="panel-footer text-right">
                        <c:if test="${questionBank.questionType==Contant.OPTION||questionBank.questionType==Contant.OPTIONS}">
                            <button type="button" class="button"
                                    onclick="javascript:window.location.href='/bank/to_option_update?id=${questionBank.id}';">
                                编辑
                            </button>
                        </c:if>
                        <c:if test="${questionBank.questionType==Contant.SUBJECTIVE}">
                            <button type="button" class="button"
                                    onclick="javascript:window.location.href='/bank/to_sub_update?id=${questionBank.id}';">
                                编辑
                            </button>
                        </c:if>
                        <button type="button" class="button" onclick="javascript:window.location.href='/bank/to_delete?id=${questionBank.id}"> 删除</button>
                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="oes.global.Contant" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 试卷详情 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 考试试卷 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-4">姓名:${sessionScope.presonnel.name}</div>
                        <div class="col-md-4">考试时间:<spring:eval expression="testPaper.createDate"/></div>
                        <div class="col-md-4">总分:100</div>
                    </div>
                    <c:forEach items="${testQuestionList}" var="list" varStatus="sta">
                    <c:if test="${list.questionBank.questionType==Contant.OPTION}">
                        <div class="section row">
                            <div class="col-md-12">单选${sta.index+1}：${list.questionBank.topice}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">A:${list.questionBank.optionA}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">B:${list.questionBank.optionB}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">C:${list.questionBank.optionC}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">D:${list.questionBank.optionD}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-4">
                                您的答案：<b style="color: red">${list.useranwser}</b>
                            </div>
                            <div class="col-md-4">
                                正确答案：<b style="color: red">${list.libanwser}</b>
                            </div>
                            <div class="col-md-4">
                                得分：<b style="color: red">${list.grade}</b>
                            </div>
                        </div>
                        <hr>
                    </c:if>
                    <c:if test="${list.questionBank.questionType==Contant.OPTIONS}">
                        <div class="section row">
                            <div class="col-md-12">多选${sta.index+1}：${list.questionBank.topice}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">A:${list.questionBank.optionA}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">B:${list.questionBank.optionB}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">C:${list.questionBank.optionC}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">D:${list.questionBank.optionD}
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-4">
                                您的答案：<b style="color: red">${list.useranwser}</b>
                            </div>
                            <div class="col-md-4">
                                正确答案：<b style="color: red">${list.libanwser}</b>
                            </div>
                            <div class="col-md-4">
                                得分：<b style="color: red">${list.grade}</b>
                            </div>
                        </div>
                        <hr>
                    </c:if>
                    <c:if test="${list.questionBank.questionType==Contant.SUBJECTIVE}">
                    <div class="section row">
                        <div class="col-md-12">主观${sta.index+1}：${list.questionBank.topice}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">
                            正确答案：<b style="color: red">${list.libanwser}</b>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">
                            您的答案：<b style="color: red">${list.useranwser}</b>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">
                            得分：<b style="color: red"><c:if test="${list.grade==null}">未知</c:if>
                            <c:if test="${list.grade!=null}">${list.grade}</c:if></b>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
                <div class="section row">
                    <div class="panel-footer text-right">
                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>

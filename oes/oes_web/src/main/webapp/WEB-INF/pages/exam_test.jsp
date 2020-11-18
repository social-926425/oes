<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="oes.global.Contant" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 考试试卷 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form id="admin-form" name="addForm" action="/exam/test" method="post">
                    <input type="hidden" name="TpId" value="${testPaper.id}"/>
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 考试试卷 </span>
                        </div>

                        <c:forEach items="${testQuestionList}" var="list" varStatus="sta">
                            <c:if test="${list.questionBank.questionType==Contant.OPTION}">
                                <div class="section row">
                                    <div class="col-md-12">单选${sta.index+1}：${list.questionBank.topice}</div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="radio" value="A"
                                                                  name="useranwser${sta.index}">A:${list.questionBank.optionA}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="radio" value="B"
                                                                  name="useranwser${sta.index}">B:${list.questionBank.optionB}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="radio" value="C"
                                                                  name="useranwser${sta.index}">C:${list.questionBank.optionC}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="radio" value="D"
                                                                  name="useranwser${sta.index}">D:${list.questionBank.optionD}
                                    </div>
                                </div>
                                <hr>
                            </c:if>
                            <c:if test="${list.questionBank.questionType==Contant.OPTIONS}">
                                <div class="section row">
                                    <div class="col-md-12">多选${sta.index+1}：${list.questionBank.topice}</div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="checkbox" value="A"
                                                                  name="useranwser${sta.index}">A:${list.questionBank.optionA}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="checkbox" value="B"
                                                                  name="useranwser${sta.index}">B:${list.questionBank.optionB}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="checkbox" value="C"
                                                                  name="useranwser${sta.index}">C:${list.questionBank.optionC}
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12"><input type="checkbox" value="D"
                                                                  name="useranwser${sta.index}">D:${list.questionBank.optionD}
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
                                        <input class="gui-input" name="useranwser${sta.index}" placeholder="答案"/>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <div class="section row">
                            <div class="panel-footer text-right">
                                <button type="submit" class="button">交卷</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>

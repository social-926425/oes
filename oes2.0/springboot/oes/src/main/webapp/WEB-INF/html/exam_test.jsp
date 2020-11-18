<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="fun.afterglow.oes.global.Contant" %>
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
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="radio" value="A"
                                                   name="useranwser${sta.index}"
                                                   required="required">&nbsp;&nbsp;&nbsp;&nbsp;A:&nbsp;${list.questionBank.optionA}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="radio" value="B"
                                                   name="useranwser${sta.index}"
                                                   required="required">&nbsp;&nbsp;&nbsp;&nbsp;B:&nbsp;${list.questionBank.optionB}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="radio" value="C"
                                                      name="useranwser${sta.index}"
                                                      required="required">&nbsp;&nbsp;&nbsp;&nbsp;C:&nbsp;${list.questionBank.optionC}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="radio" value="D"
                                                   name="useranwser${sta.index}"
                                                   required="required">&nbsp;&nbsp;&nbsp;&nbsp;D:&nbsp;${list.questionBank.optionD}
                                        </label>
                                    </div>
                                </div>
                                <hr>
                            </c:if>
                            <c:if test="${list.questionBank.questionType==Contant.OPTIONS}">
                                <div class="section row">
                                    <div class="col-md-12">多选${sta.index+1}：${list.questionBank.topice}</div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="checkbox" value="A"
                                                   name="useranwser${sta.index}">&nbsp;&nbsp;&nbsp;&nbsp;A:&nbsp;${list.questionBank.optionA}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="checkbox" value="B"
                                                   name="useranwser${sta.index}">&nbsp;&nbsp;&nbsp;&nbsp;B:&nbsp;${list.questionBank.optionB}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="checkbox" value="C"
                                                   name="useranwser${sta.index}">&nbsp;&nbsp;&nbsp;&nbsp;C:&nbsp;${list.questionBank.optionC}
                                        </label>
                                    </div>
                                </div>
                                <div class="div-diy row">
                                    <div class="col-md-12">
                                        <label class="input-diy">
                                            <input type="checkbox" value="D"
                                                   name="useranwser${sta.index}">&nbsp;&nbsp;&nbsp;&nbsp;D:&nbsp;${list.questionBank.optionD}
                                        </label>
                                    </div>
                                </div>
                                <input type="hidden" value="K" name="useranwser${sta.index}">
                                <hr>
                            </c:if>
                            <c:if test="${list.questionBank.questionType==Contant.SUBJECTIVE}">
                                <div class="section row">
                                    <div class="col-md-12">主观${sta.index+1}：${list.questionBank.topice}</div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-12">
                                        <input type="text" class="gui-input" required="required" name="useranwser${sta.index}" placeholder="答案"/>
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

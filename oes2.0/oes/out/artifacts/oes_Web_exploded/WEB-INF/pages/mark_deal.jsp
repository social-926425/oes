<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 考试阅卷 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form id="admin-form" name="addForm" action="/mark/deal" method="post">
                    <input type="hidden" name="pregerid" value="${creatpager.id}"/>
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 考试试卷 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-4">姓名:${creatpager.creater.name}</div>
                            <div class="col-md-4">考试时间:<spring:eval expression="creatpager.createDate"/></div>
                            <div class="col-md-4">总分:100</div>
                        </div>
                        <c:forEach items="${examlist}" var="list" varStatus="sta">
                            <div class="section row">
                                <div class="col-md-12">${sta.index+1}：${list.questionBank.topice}</div>
                            </div>
                            <div class="section row">
                                <div class="col-md-12">
                                    正确答案：<b style="color: red">${list.libanwser}</b>
                                </div>
                            </div>
                            <br>
                            <div class="section row">
                                <div class="col-md-12">
                                    考生答案：<b style="color: red">${list.useranwser}</b>
                                </div>
                            </div>
                            <br>
                            <div class="section row">
                                <div class="col-md-12">
                                    得分：<input type="text" class="gui-input" name="grade${sta.index+1}"/>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="section row">
                            <div class="panel-footer text-right">
                                <button type="submit" class="button">完成</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>

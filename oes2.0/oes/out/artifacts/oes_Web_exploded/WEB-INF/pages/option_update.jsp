<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 修改客观题 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" name="addForm" action="/bank/option_update" modelAttribute="questionBank">
                <form:hidden path="id"/>
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <label for="topice" class="field prepend-icon">
                                    <form:input path="topice" cssClass="gui-input" placeholder="题目"/>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="optionA" class="field prepend-icon">
                                    <form:input path="optionA" cssClass="gui-input" placeholder="选项A"/>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="optionB" class="field prepend-icon">
                                    <form:input path="optionB" cssClass="gui-input" placeholder="选项B"/>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="optionC" class="field prepend-icon">
                                    <form:input path="optionC" cssClass="gui-input" placeholder="选项C"/>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="optionD" class="field prepend-icon">
                                    <form:input path="optionD" cssClass="gui-input" placeholder="选项D"/>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-7"></div>
                            <div class="col-md-2">
                                <label for="questionType" class="field select">
                                    <form:select path="questionType" items="${option}" cssClass="gui-input" placeholder="题型..."/>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-3">
                                <label for="answer" class="field prepend-icon">
                                    <form:input path="answer" cssClass="gui-input" placeholder="正确答案"
                                           type="text" value=""/>
                                </label>
                            </div>
                        </div>

                        <div class="section row">
                            <div class="panel-footer text-right">
                                <button type="submit" class="button"> 保存</button>
                                <button type="button" class="button"
                                        onclick="javascript:window.history.go(-1);"> 返回
                                </button>
                            </div>
                        </div>
                </form:form>
            </div>
        </div>
    </div>
</section>


<jsp:include page="bottom.jsp"/>

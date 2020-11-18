<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="oes.global.Contant" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加字典 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" name="addForm" action="/dictionary/add" modelAttribute="dictionary">
                <form:hidden path="pId"/>
                <form:hidden path="namePath"/>
                <form:hidden path="path"/>
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            当前路径：${parent.namePath}
                        </div>
                        <div class="col-md-6">
                            父分类&nbsp;&nbsp;中文名:${parent.cnName}&nbsp;&nbsp;&nbsp;&nbsp;英文名：${parent.enName}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            <label for="enName" class="field prepend-icon">
                                <form:input path="enName" cssClass="gui-input" placeholder="英文名"/>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="enName" class="field prepend-icon">
                                <form:input path="cnName" cssClass="gui-input" placeholder="中文名"/>
                            </label>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            <label for="code" class="field prepend-icon">
                                <form:input path="code" cssClass="gui-input" placeholder="code"/>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="value" class="field prepend-icon">
                                <form:input path="value" cssClass="gui-input" placeholder="value"/>
                            </label>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            <label for="attribute1" class="field prepend-icon">
                                <form:input path="attribute1" cssClass="gui-input" placeholder="attribute1"/>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="attribute2" class="field prepend-icon">
                                <form:input path="attribute2" cssClass="gui-input" placeholder="attribute2"/>
                            </label>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            <label for="attribute3" class="field prepend-icon">
                                <form:input path="attribute3" cssClass="gui-input" placeholder="attribute3"/>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="state" class="field prepend-icon">
                                <form:select path="state" cssClass="gui-input" placeholder="状态..." items="${Contant.getStart()}"/>
<%--                                <form:input path="state" cssClass="gui-input" placeholder="state"/>--%>
                            </label>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="panel-footer text-right">
                            <button type="submit" class="button">保存</button>
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

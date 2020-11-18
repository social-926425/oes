<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加字典 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
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
                            英文名 : ${dictionary.enName}
                        </div>
                        <div class="col-md-6">
                            中文名 : ${dictionary.cnName}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            code : ${dictionary.code}
                        </div>
                        <div class="col-md-6">
                            value : ${dictionary.value}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            attribute1 : ${dictionary.attribute1}
                        </div>
                        <div class="col-md-6">
                            attribute2 : ${dictionary.attribute2}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            attribute3 : ${dictionary.attribute3}
                        </div>
                        <div class="col-md-6">
                            state : ${dictionary.state}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"
                                    onclick="javascript:window.location.href='/dictionary/to_update?id=${dictionary.id}'">
                                编辑
                            </button>
                            <button type="button" class="button"
                                    onclick="javascript:window.history.go(-1);"> 返回
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>


<jsp:include page="bottom.jsp"/>

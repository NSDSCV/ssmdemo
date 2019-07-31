<%--
  Created by IntelliJ IDEA.
  User: 宗明禄
  Date: 2019-07-16
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<%--引入bootstrap
    表头不能重复
--%>
<%@ include file="/include/include.jsp" %>
;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="/ssm/index">首页</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/ssm/listCategory">项目表</a>
                        </li>
                        <li class="active">
                            <a href="/ssm/demo">待续</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown">Dropdown<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">测试</a>
                                </li>
                                <li>
                                    <a href="#">测试2</a>
                                </li>
                                <li>
                                    <a href="#">测试3</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">特殊测试1</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">特殊测试2</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input class="form-control" type="text"/>
                        </div>
                        <button class="btn btn-default" type="submit">提交</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown">Dropdown<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
</div>

</body>
</html>

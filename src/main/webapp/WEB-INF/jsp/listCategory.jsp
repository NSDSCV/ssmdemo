<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>
<!doctype html>
<%--引入bootstrap
    表头不能重复
--%>
<%@ include file="/include/include.jsp" %>
;
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                        <li class="active">
                            <a href="/ssm/listCategory">项目表</a>
                        </li>
                        <li>
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
            <br><br>

            <div class="panel panel-primary">
                <div class="panel-body">
                    <button id="addbtu" class="btn btn-default btn-primary" type="button">添加</button>
                    <button id="getbtu" class="btn btn-default btn-info" type="button">查询</button>

                    <table class="table table-bordered table-hover table-condensed">

                        <tr>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>年龄</th>
                            <th>性别</th>
                            <th>操作</th>

                        </tr>
                        <c:forEach items="${cs}" var="c" varStatus="st">
                            <tr>
                                <td>${c.card}</td>
                                <td class="success">${c.username}</td>
                                <td>${c.age}</td>
                                <td>${c.gender}</td>
                                <td><a href="editCategory?id=${c.card}">编辑</a>
                                    <a href="deleteCategory?id=${c.card}">删除</a></td>
                            </tr>
                        </c:forEach>
                    </table>

                    <div class="col-lg-5  col-lg-push-4">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="?start=0">首页</a></li>
                                <li><a <c:if
                                        test="${page.start-page.count>=0}"> href="?start=${page.start-page.count}"</c:if>>上一页</a>
                                </li>
                                <li><a <c:if
                                        test="${page.start+page.count<=page.last}"> href="?start=${page.start+page.count}"</c:if>>下一页</a>
                                </li>
                                <li><a href="?start=${page.last}">尾页</a></li>

                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <%--模态框--%>

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">添加模态框（Modal）</h4>
                        </div>
                        <div class="modal-body">
                            <form action="addCategory" method="post">
                                <div class="form-group">
                                    <label>学号</label>
                                    <input id="card" value="" type="text" class="form-control"/>
                                </div>

                                <div class="form-group">
                                    <label>姓名</label>
                                    <input id="username" value="" type="text" class="form-control"/>
                                </div>

                                <div class="form-group">
                                    <label>年龄</label>
                                    <input id="age" value="" type="text" class="form-control"/>
                                </div>

                                <div class="form-group">
                                    <label>性别</label>
                                    <input id="gender" value="" type="text" class="form-control"/>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <input id="submit" type="button" value="提交更改" class="btn btn-primary"/>
                                </div>
                            </form>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>

            <%--			<div style="width:auto;height: auto"  class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
            <%--			<form role="form">--%>
            <%--				<div class="form-group">--%>
            <%--					<label for="exampleInputEmail1">Email address</label><input class="form-control" id="exampleInputEmail1" type="email" />--%>
            <%--				</div>--%>
            <%--				<div class="form-group">--%>
            <%--					<label for="exampleInputPassword1">Password</label><input class="form-control" id="exampleInputPassword1" type="password" />--%>
            <%--				</div>--%>
            <%--				<div class="checkbox">--%>

            <%--				</div> <button class="btn btn-default" type="submit">Submit</button>--%>
            <%--			</form>--%>
            <%--			</div>--%>
        </div>
    </div>
</div>


<script>
    $('#addbtu').click(function () {
        $('#myModal').modal(
        );
    });
    $('#submit').click(function () {
        //bootstrap模态框取值只能用 document.getElementById $无法取值
        var card = document.getElementById("card").value;
        var username = document.getElementById("username").value;
        var age = document.getElementById("age").value;
        var gender = document.getElementById("gender").value;
        var category = {"card": card, "username": username, "age": age, "gender": gender};
        var url = "addCategory";

        $.ajax({
            type: "POST",
            url: url,
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(category),
            success: function (result) {
                alert(card + username + age + gender);
            }
        });
    })


</script>

</body>



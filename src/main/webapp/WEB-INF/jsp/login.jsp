<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>
<!doctype html>
<%--引入bootstrap
    表头不能重复
--%>
<%@ include file="/include/include.jsp" %>
;
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

</head>
<body>
<div>
    <form id="" action="/ssm/get" method="post">
        <input id="username" name="username" type="text" value=""/><br><br>
        <input id="password" name="password" type="password" value=""/><br><br>
        <input id="but" type="submit" class="btn btn-success">登录</input>
        <button id=regist>注册</button>
    </form>
</div>
<script>
</script>
</body>

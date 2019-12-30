<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>宿舍查询</title>
    <link rel="stylesheet" href="../css/dor-list.css">
</head>
<body>
<jsp:include page="headerside.jsp"></jsp:include>
<div class="main">
    <div class="mainbg"></div>
    <div class="mainshadow"></div>
    <div class="search">
        <form action="#" method="post">
            <input type="text" name="keyword" placeholder="请输入关键字">
            <input type="submit" name="submit" value="搜索" id="searchbtn">
        </form>
    </div>
    <div class="searchdetail">
        <table id="table">
            <tr>
                <th>宿舍号</th>
                <th>类型</th>
                <th>详情</th>
                <th>删除宿舍</th>
            </tr>
            <c:forEach items="${requestScope.result}" var="dor">
                <tr>
                    <td>${dor.dno}</td>
                    <td>${dor.type}</td>
                    <td><a href="#" id="detail">详情</a></td>
                    <td><a href="#">删除</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="#" id="btn0"></a>
        <a href="#" id="btn1">首页</a>
        <a href="#" id="btn2">上一页</a>
        <a href="#" id="btn3">下一页</a>
        <a href="#" id="btn4">尾页</a>
    </div>
</div>
</div>
<script src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/user-list.js"></script>
</body>
</html>
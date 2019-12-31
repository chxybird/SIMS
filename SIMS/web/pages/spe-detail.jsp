<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>专业详情</title>
    <link rel="stylesheet" href="../css/spe-detail.css">
</head>
<body>
<jsp:include page="headerside.jsp"></jsp:include>
<div class="main">
    <div class="mainbg"></div>
    <div class="mainshadow"></div>
    <div class="spedetail">
        <h2>专业详情</h2>
        <table id="table">
            <tr>
                <th>专业名称</th>
                <td>${spe.name}</td>
            </tr>
            <tr>
                <th>所有院系</th>
                <td>${spe.faculty}</td>
            </tr>
            <tr>
                <th>培养类型</th>
                <td>${spe.typeStr}</td>
            </tr>
        </table>
        <h2>专业学生</h2>
        <table id="table2">
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</div>
</div>
</body>
</html>

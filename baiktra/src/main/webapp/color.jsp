<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chọn màu nền</title>
</head>
<body style="background-color: ${sessionScope.color}">
    <form method="post" action="setColor">
        <label>Chọn màu nền:</label>
        <select name="color">
            <option value="white">White</option>
            <option value="red">Red</option>
            <option value="blue">Blue</option>
            <option value="green">Green</option>
        </select>
        <button type="submit">Áp dụng</button>
    </form>

    <c:choose>
        <c:when test="${not empty sessionScope.color}">
            <p>Màu nền hiện tại: <strong>${sessionScope.color}</strong></p>
        </c:when>
        <c:otherwise>
            <p>Chưa chọn màu nền.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
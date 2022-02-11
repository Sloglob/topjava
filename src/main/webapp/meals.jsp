<%@ page import="ru.javawebinar.topjava.model.MealTo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Month" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<% List<MealTo> mealsList = Arrays.asList(--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 30, 10, 0), "Завтрак", 500, false),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 30, 13, 0), "Обед", 1000, false),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 30, 20, 0), "Ужин", 500, false),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 31, 0, 0), "Еда на граничное значение", 100, true),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 31, 10, 0), "Завтрак", 1000, true),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 31, 13, 0), "Обед", 500, true),--%>
<%--        new MealTo(LocalDateTime.of(2020, Month.JANUARY, 31, 20, 0), "Ужин", 410, true)--%>
<%--);--%>

<%--    request.setAttribute("mealsList", mealsList); %>--%>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="solid">
    <th>Date & Time</th>
    <th>Description</th>
    <th>Calories</th>
    <c:forEach items="${requestScope.mealToList}" var="item">
        <tr style="color: ${item.excess eq true ? 'red' : 'green'}">
        <td><fmt:parseDate value="${item.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var="myDate" type="both"/>
            <fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd HH:mm" /></td>
        <td>${item.description}</td>
        <td>${item.calories}</td>
    </tr>
    </c:forEach>

</table>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<div class="container py-4">

    <%@ include file="menu.jsp" %>

    <%!
        String greeting = "도서 쇼핑몰에 오신 것을 환영합니다";
        String tagline = "Welcome to Web Market!";
    %>

    <%
        
        Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours();
        int minute = day.getMinutes();
        int second = day.getSeconds();

        if (hour / 12 == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
            hour = hour - 12;
        }

       
        String CT = String.format("%d:%02d:%02d %s", hour, minute, second, am_pm);
    %>

    <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold"><%= greeting %></h1>
            <p class="col-md-8 fs-4">BookMarket</p>
        </div>
    </div>

    <p class="text-center fs-5"><%= tagline %></p>

    <p class="text-center text-muted">
        현재 접속 시각: <%= CT %>
    </p>

    <%@ include file="footer.jsp" %>

</div>

</body>
</html>
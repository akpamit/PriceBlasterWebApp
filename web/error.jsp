<%-- 
    Document   : error
    Created on : 30 May, 2016, 6:15:59 PM
    Author     : AKP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Price Blaster</title>
        <link href="css/select2.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/DT_bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/jquery-ui-bootstrap/jquery-ui-bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h1>A 404 error occurred</h1>
            <h2>Page not found.</h2>
            The requested URL could not be matched by routing.
            <h2>No Exception available</h2>
            <jsp:include page="footer.jsp"/>
        </div> 

    </body>
</html>

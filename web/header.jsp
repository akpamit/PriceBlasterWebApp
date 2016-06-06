<%-- 
    Document   : layout
    Created on : 30 May, 2016, 12:47:04 PM
    Author     : AKP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!-- Le styles -->
        <style type=text/css">
            .active{
                color:#ffffff;
            }
        </style>

    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <ul class="nav navbar-nav">
                        <li id="home"><a class="navbar-brand" href="" style="color: white;">Price Blaster</a></li>
                    </ul>
                </div>
                <%
                if (false) {
                %>
                <div class="collapse navbar-collapse">

                    <ul class="nav navbar-nav">
                        <li class="dropdown user-dropdown" id="manage">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-gear"></i> Manage <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li id="user"><a href="<?php echo $this->url('admin-user', array('action' => 'index')); ?>"><i class="fa fa-user"></i> User</a></li>
                                <li id="service-provider"><a href="<?php echo $this->url('admin-service-provider', array('action' => 'index')); ?>"> <i class="fa fa-group"></i> Provider</a></li>
                                <li id="terms"><a href="<?php echo $this->url('admin-tnc', array('action' => 'index')); ?>"><i class="fa fa-list-alt"></i> Tnc</a></li>
                                <li id="upload"><a href="<?php echo $this->url('admin-upload', array('action' => 'index')); ?>"><i class="fa fa-upload"></i> Bulk Upload</a></li>
                                <li id="request"><a href="<?php echo $this->url('admin-request', array('action' => 'index')); ?>"><i class="fa fa-inbox"></i> Quote Request</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown user-dropdown" id="layout-project">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-gears"></i> Project <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li id="project-categories"><a href="<?php echo $this->url('admin-project-categories', array('action' => 'index')); ?>"><i class="fa fa-angle-double-right"></i> Project Category</a></li>
                                <li id="project-categories"><a href="<?php echo $this->url('admin-project', array('action' => 'index')); ?>"><i class="fa fa-angle-double-right"></i> Project</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown user-dropdown" id="layout-mail">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-envelope"></i> MailTemplate <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href='/admin/mail-template/invite'><i class="fa fa-angle-double-right"></i> Invitation</a></li>
                                <li><a href='/admin/mail-template/forgotPassword'><i class="fa fa-angle-double-right"></i> Forget Password</a></li>
                                <li><a href='/admin/mail-template/verification'><i class="fa fa-angle-double-right"></i> User Verification</a></li>
                                <li><a href='/admin/mail-template/emailPasswordVerification'><i class="fa fa-angle-double-right"></i> Password Verification</a></li>
                                <li><a href='/admin/mail-template/userResponse'><i class="fa fa-angle-double-right"></i> Response To User Request</a></li>
                                <li><a href='/admin/mail-template/adminResponse'><i class="fa fa-angle-double-right"></i> Response To Admin Request</a></li>
                                <li><a href='/admin/mail-template/dailyProgress'><i class="fa fa-angle-double-right"></i> Daily Business Progress Report</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown user-dropdown" id="layout-sms">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-comment"></i> SMS Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href='/admin/sms-template/passwordVerification'><i class="fa fa-angle-double-right"></i> Password Verification</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li id="global-config"><a href="<?php echo $this->url('admin-global-config', array('action' => 'index')); ?>"><i class="fa fa-globe"></i> Global Config</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right navbar-user">
                        <li class="dropdown user-dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user"></i> <?php echo ucwords($loginContainer->adminLogin); ?></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo $this->url('change-password', array('action' => 'index')); ?>">Change Password</a></li>
                                <li><a href="<?php echo $this->url('admin-login', array('action' => 'logout')); ?>">Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
                <% } %>

            </div>
        </nav>
        <div class="container">
            
        </div> <!-- /container -->
        <script type="text/javascript">
            str = $(location).attr('pathname');
            splitsUrl = str.split("/", 4);
            //console.log(splitsUrl);
            if (splitsUrl[1] == "admin") {
            if (splitsUrl[2] == 'project-categories') {
            $("#layout-project").addClass("active");
            }
            else if (splitsUrl[2] == 'user') {
            $("#manage").addClass("active");
            } else if (splitsUrl[2] == 'project') {
            $("#layout-project").addClass("active");
            } else if (splitsUrl[2] == 'service-provider') {
            $("#manage").addClass("active");
            } else if (splitsUrl[2] == 'term') {
            $("#manage").addClass("active");
            } else if (splitsUrl[2] == 'upload') {
            $("#manage").addClass("active");
            } else if (splitsUrl[2] == 'global-config') {
            $("#global-config").addClass("active");
            } else if (splitsUrl[2] == 'request') {
            $("#manage").addClass("active");
            }
            else {
            $("#" + splitsUrl[2]).addClass("active");
            }
            } else {
            $("#home").addClass("active");
            }
            $(document).ready(function () {
            < ?php
                    if (isset($container - > alertMsg) && $container - > alertMsg != "") {
            ? >
                    alert("<?php echo $container->alertMsg; ?>");
            < ?php
                    $container - > alertMsg = "";
            unset($container - > alertMsg);
            }
            ? >
                    $('.datepicker').datepicker({
            changeMonth: true,
                    changeYear: true,
                    dateFormat: 'dd-M-yy',
                    yearRange: < ?php echo (date('Y') - 50); ? > + ":" + "<?php echo (date('Y')) ?>"
            });
            });
            $(".checkNum").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== - 1 ||
                    // Allow: Ctrl+A
                            (e.keyCode == 65 && e.ctrlKey === true) ||
                            // Allow: home, end, left, right
                                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                    // let it happen, don't do anything
                    return;
                    }
                    // Ensure that it is a number and stop the keypress
                    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                    }
                    });
        </script>
    </body>
</html>

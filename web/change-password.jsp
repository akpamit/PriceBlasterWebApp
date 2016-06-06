<jsp:include page="header.jsp"/>
<div class="container">
    <style type="text/css">
        .form-signin {
            max-width: 375px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
    </style>
    <div class="container">
        <form class="form-signin" role="form" name="changePasswordInformation" id="changePasswordInformation" method="post" action="" autocomplete="off">
            <h2 class="form-signin-heading">Change Password</h2>
            <div class="control-group">
                <label class="control-label" for="inputPassword">Old Password</label>
                <div class="controls">
                    <input type="password" name="oldPassword" id="oldPassword" class="isRequired" title="Please Enter Correct Password" placeholder="Password" onblur="passwordValidations('admin', 'password', this, '<%= "admin_id##" . $session%>', 'Your Old Password is Incorrect')">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPassword">New Password</label>
                <div class="controls">
                    <input type="password" name="password" id="newPassword" class="isRequired confirmPassword" placeholder="Password">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPassword">Confirm Password</label>
                <div class="controls">
                    <input type="password" name="password" id="confirmPassword" class="isRequired" placeholder="Confirm Password">
                </div>
            </div>

            <button class="btn btn-primary" type="button" onclick="validateNow();return false;" >Submit</button>
            <button class="btn btn-default" type="button"><a href="<?php echo $this->url('admin-index', array('action' => 'index')); ?>" style="text-decoration:none;">Cancel</a></button>
        </form>
    </div>

    <script type="text/javascript">
        function validateNow() {
            flag = deforayValidator.init({
                formId: 'changePasswordInformation'
            });
            if (flag) {
                document.getElementById('changePasswordInformation').submit();
            }
        }

        function back() {
            window.location = "/";
        }
        function passwordValidations(tableName, fieldName, obj, fnct, msg)
        {
            checkValue = document.getElementById(obj.id).value;
            $.post("<?php echo $this->url('common', array('action' => 'index')); ?>", {tableName: tableName, fieldName: fieldName, value: checkValue, fnct: fnct},
                    function (data) {
                        console.log(data);
                        if (data > 0)
                        {
                            duplicateName = true;
                        } else {

                            alert(msg);
                            duplicateName = false;
                            document.getElementById(obj.id).value = "";
                        }
                    });
        }
    </script>
    <jsp:include page="footer.jsp"/>
</div>
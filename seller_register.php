<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

if (isset($_SESSION['Seller_email'])) {

    echo "<script> window.open('seller_index.php','_self'); </script>";

}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Stelomart </title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

    <link href="styles/bootstrap.min.css" rel="stylesheet">

    <link href="styles/style.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">


</head>

<body>

    <div id="top">
        <!-- top Starts -->

        <div class="container">
            <!-- container Starts -->

            <div class="col-md-6 offer">
                <!-- col-md-6 offer Starts -->

                <a href="#" class="btn btn-success btn-sm">

                    <?php

                    if (!isset($_SESSION['Seller_email'])) {

                        echo "Welcome :Seller";


                    } else {

                        echo "Welcome : " . $_SESSION['Seller_email'] . "";

                    }


                    ?>

                </a>

            </div><!-- col-md-6 offer Ends -->

            <div class="col-md-6">
                <!-- col-md-6 Starts -->
                <ul class="menu">
                    <!-- menu Starts -->

                    <li>
                        <a href="seller_register.php">
                            Seller Register
                        </a>
                    </li>

                    <li>
                        <?php

                        if (!isset($_SESSION['Seller_email'])) {

                            echo "<a href='seller_login.php' >My Account</a>";

                        } else {

                            echo "<a href='Seller/my_account.php?my_orders'>My Account</a>";

                        }


                        ?>
                    </li>

                    <li>
                        <?php

                        if (!isset($_SESSION['Seller_email'])) {

                            echo "<a href='seller_login.php'> Login </a>";

                        } else {

                            echo "<a href='logout.php'> Logout </a>";

                        }

                        ?>
                    </li>

                </ul><!-- menu Ends -->

            </div><!-- col-md-6 Ends -->

        </div><!-- container Ends -->
    </div><!-- top Ends -->

    <div class="navbar navbar-default" id="navbar">
        <!-- navbar navbar-default Starts -->
        <div class="container">
            <!-- container Starts -->

            <div class="navbar-header">
                <!-- navbar-header Starts -->

                <a class="navbar-brand home" href="index.php">
                    <!--- navbar navbar-brand home Starts -->

                    <img src="images/EcommerceStore.png" alt="computerfever logo" class="hidden-xs">
                    <img src="images/EcommerceStoreSmall.png" alt="computerfever logo" class="visible-xs">


                </a>
                <!--- navbar navbar-brand home Ends -->

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                    <span class="sr-only">Toggle Navigation </span>

                    <i class="fa fa-align-justify"></i>

                </button>

                <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">

                    <span class="sr-only">Toggle Search</span>

                    <i class="fa fa-search"></i>

                </button> -->


            </div><!-- navbar-header Ends -->

            <div class="navbar-collapse collapse" id="navigation">
                <!-- navbar-collapse collapse Starts -->

                <div class="padding-nav">
                    <!-- padding-nav Starts -->

                    <ul class="nav navbar-nav navbar-left">
                        <!-- nav navbar-nav navbar-left Starts -->

                        <li>
                            <a href="index.php"> Home </a>
                        </li>

                        <li>
                            <a href="shop.php"> Shop </a>
                        </li>

                        <li>
                            <?php

                            if (!isset($_SESSION['Seller_email'])) {

                                echo "<a href='seller_login.php' >My Account</a>";

                            } else {

                                echo "<a href='seller/my_account.php?my_orders'>My Account</a>";

                            }


                            ?>
                        </li>

                        <li>
                            <a href="cart.php"> Shopping Cart </a>
                        </li>

                        <li>
                            <a href="about.php"> About Us </a>
                        </li>

                        <li>

                            <a href="services.php"> Services </a>

                        </li>

                        <li>
                            <a href="contact.php"> Contact Us </a>
                        </li>

                    </ul><!-- nav navbar-nav navbar-left Ends -->

                </div><!-- padding-nav Ends -->




            </div><!-- collapse clearfix Ends -->

        </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
    </div><!-- navbar navbar-default Ends -->


    <div id="content">
        <!-- content Starts -->
        <div class="container">
            <!-- container Starts -->

            <div class="col-md-12">
                <!--- col-md-12 Starts -->

                <ul class="breadcrumb">
                    <!-- breadcrumb Starts -->

                    <li>
                        <a href="index.php">Home</a>
                    </li>

                    <li>
                        <a href="seller_register.php">Seller Register</a>
                    </li>

                </ul><!-- breadcrumb Ends -->



            </div>
            <!--- col-md-12 Ends -->



            <div class="col-md-12">
                <!-- col-md-12 Starts -->

                <div class="box">
                    <!-- box Starts -->

                    <div class="box-header">
                        <!-- box-header Starts -->

                        <center>
                            <!-- center Starts -->

                            <h2> Register A New Seller Account </h2>



                        </center><!-- center Ends -->

                    </div><!-- box-header Ends -->

                    <form action="seller_register.php" method="post" enctype="multipart/form-data">
                        <!-- form Starts -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label>Seller Name</label>

                            <input type="text" class="form-control" name="Seller_name" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label>Business Name</label>

                            <input type="text" class="form-control" name="business_name" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Bank Account Number </label>

                            <div class="input-group">
                                <!-- input-group Starts -->

                                <span class="input-group-addon">
                                    <!-- input-group-addon Starts -->

                                    <i class="fa fa-check tick1"> </i>

                                    <i class="fa fa-times cross1"> </i>

                                </span><!-- input-group-addon Ends -->

                                <input type="text" class="form-control" id="accountno" name="b_accno" required>

                            </div><!-- input-group Ends -->

                        </div><!-- form-group Ends -->


                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Confirm Bank Account Number </label>

                            <div class="input-group">
                                <!-- input-group Starts -->

                                <span class="input-group-addon">
                                    <!-- input-group-addon Starts -->

                                    <i class="fa fa-check tick2"> </i>

                                    <i class="fa fa-times cross2"> </i>

                                </span><!-- input-group-addon Ends -->

                                <input type="text" class="form-control confirm" id="con_accountno" required>

                            </div><!-- input-group Ends -->

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Bank IFSC Code </label>

                            <input type="text" class="form-control" name="b_ifsc" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Bank Account Holder Name </label>

                            <input type="text" class="form-control" name="b_name" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Tax Number </label>

                            <input type="text" class="form-control" name="tax_no" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Tax Payer Information Number </label>

                            <input type="text" class="form-control" name="tax_info_no" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Tax IFSC Code </label>

                            <input type="text" class="form-control" name="t_ifsc" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Tax Account Holder Name </label>

                            <input type="text" class="form-control" name="t_name" required>

                        </div><!-- form-group Ends -->


                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Email</label>

                            <input type="email" class="form-control" name="Seller_email" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Password </label>

                            <div class="input-group">
                                <!-- input-group Starts -->

                                <span class="input-group-addon">
                                    <!-- input-group-addon Starts -->

                                    <i class="fa fa-check tick1"> </i>

                                    <i class="fa fa-times cross1"> </i>

                                </span><!-- input-group-addon Ends -->

                                <input type="password" class="form-control" id="pass" name="Seller_password" required>

                                <span class="input-group-addon">
                                    <!-- input-group-addon Starts -->

                                    <div id="meter_wrapper">
                                        <!-- meter_wrapper Starts -->

                                        <span id="pass_type"> </span>

                                        <div id="meter"> </div>

                                    </div><!-- meter_wrapper Ends -->

                                </span><!-- input-group-addon Ends -->

                            </div><!-- input-group Ends -->

                        </div><!-- form-group Ends -->


                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Confirm Password </label>

                            <div class="input-group">
                                <!-- input-group Starts -->

                                <span class="input-group-addon">
                                    <!-- input-group-addon Starts -->

                                    <i class="fa fa-check tick2"> </i>

                                    <i class="fa fa-times cross2"> </i>

                                </span><!-- input-group-addon Ends -->

                                <input type="password" class="form-control confirm" id="Seller_con_pass" required>

                            </div><!-- input-group Ends -->

                        </div><!-- form-group Ends -->


                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Country </label>

                            <input type="text" class="form-control" name="Seller_country" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller City </label>

                            <input type="text" class="form-control" name="Seller_city" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Contact </label>

                            <input type="text" class="form-control" name="Seller_contact" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Address </label>

                            <input type="text" class="form-control" name="Seller_address" required>

                        </div><!-- form-group Ends -->

                        <div class="form-group">
                            <!-- form-group Starts -->

                            <label> Seller Image </label>

                            <input type="file" class="form-control" name="Seller_image" required>

                        </div><!-- form-group Ends -->

                        <div class="text-center">
                            <!-- text-center Starts -->

                            <button type="submit" name="register" class="btn btn-primary">

                                <i class="fa fa-user-md"></i> Register

                            </button>

                        </div><!-- text-center Ends -->

                    </form><!-- form Ends -->

                </div><!-- box Ends -->

            </div><!-- col-md-12 Ends -->



        </div><!-- container Ends -->
    </div><!-- content Ends -->



    <?php

    include("includes/seller_footer.php");

    ?>

    <script src="js/jquery.min.js"> </script>

    <script src="js/bootstrap.min.js"></script>

    <script>

        $(document).ready(function () {

            $('.tick1').hide();
            $('.cross1').hide();

            $('.tick2').hide();
            $('.cross2').hide();


            $('.confirm').focusout(function () {

                var password = $('#pass').val();

                var confirmPassword = $('#Seller_con_pass').val();

                if (password == confirmPassword) {

                    $('.tick1').show();
                    $('.cross1').hide();

                    $('.tick2').show();
                    $('.cross2').hide();



                }
                else {

                    $('.tick1').hide();
                    $('.cross1').show();

                    $('.tick2').hide();
                    $('.cross2').show();


                }


            });


        });

    </script>

    <script>

        $(document).ready(function () {

            $("#pass").keyup(function () {

                check_pass();

            });

        });

        function check_pass() {
            var val = document.getElementById("pass").value;
            var meter = document.getElementById("meter");
            var no = 0;
            if (val != "") {
                // If the password length is less than or equal to 6
                if (val.length <= 6) no = 1;

                // If the password length is greater than 6 and contain any lowercase alphabet or any number or any special character
                if (val.length > 6 && (val.match(/[a-z]/) || val.match(/\d+/) || val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/))) no = 2;

                // If the password length is greater than 6 and contain alphabet,number,special character respectively
                if (val.length > 6 && ((val.match(/[a-z]/) && val.match(/\d+/)) || (val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)) || (val.match(/[a-z]/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)))) no = 3;

                // If the password length is greater than 6 and must contain alphabets,numbers and special characters
                if (val.length > 6 && val.match(/[a-z]/) && val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)) no = 4;

                if (no == 1) {
                    $("#meter").animate({ width: '50px' }, 300);
                    meter.style.backgroundColor = "red";
                    document.getElementById("pass_type").innerHTML = "Very Weak";
                }

                if (no == 2) {
                    $("#meter").animate({ width: '100px' }, 300);
                    meter.style.backgroundColor = "#F5BCA9";
                    document.getElementById("pass_type").innerHTML = "Weak";
                }

                if (no == 3) {
                    $("#meter").animate({ width: '150px' }, 300);
                    meter.style.backgroundColor = "#FF8000";
                    document.getElementById("pass_type").innerHTML = "Good";
                }

                if (no == 4) {
                    $("#meter").animate({ width: '200px' }, 300);
                    meter.style.backgroundColor = "#00FF40";
                    document.getElementById("pass_type").innerHTML = "Strong";
                }
            }

            else {
                meter.style.backgroundColor = "";
                document.getElementById("pass_type").innerHTML = "";
            }
        }

    </script>

    <script>

        $(document).ready(function () {

            $('.tick1').hide();
            $('.cross1').hide();

            $('.tick2').hide();
            $('.cross2').hide();


            $('.confirm').focusout(function () {

                var account_no = $('#accountno').val();

                var confirm_account_no = $('#con_accountno').val();

                if (account_no == confirm_account_no) {

                    $('.tick1').show();
                    $('.cross1').hide();

                    $('.tick2').show();
                    $('.cross2').hide();



                }
                else {

                    $('.tick1').hide();
                    $('.cross1').show();

                    $('.tick2').hide();
                    $('.cross2').show();


                }


            });


        });

    </script>

</body>

</html>

<?php

if (isset($_POST['register'])) {

    $Seller_name = mysqli_real_escape_string($con, $_POST['Seller_name']);

    $business_name = mysqli_real_escape_string($con, $_POST['business_name']);

    $b_accno = mysqli_real_escape_string($con, $_POST['b_accno']);

    $b_ifsc = mysqli_real_escape_string($con, $_POST['b_ifsc']);

    $b_name = mysqli_real_escape_string($con, $_POST['b_name']);

    $tax_no = mysqli_real_escape_string($con, $_POST['tax_no']);

    $tax_info_no = mysqli_real_escape_string($con, $_POST['tax_info_no']);

    $t_ifsc = mysqli_real_escape_string($con, $_POST['t_ifsc']);

    $t_name = mysqli_real_escape_string($con, $_POST['t_name']);

    $Seller_email = mysqli_real_escape_string($con, $_POST['Seller_email']);

    $Seller_password = mysqli_real_escape_string($con, $_POST['Seller_password']);

    $encrypted_password = password_hash($Seller_password, PASSWORD_DEFAULT);

    $Seller_country = mysqli_real_escape_string($con, $_POST['Seller_country']);

    $Seller_city = mysqli_real_escape_string($con, $_POST['Seller_city']);

    $Seller_contact = mysqli_real_escape_string($con, $_POST['Seller_contact']);

    $Seller_address = mysqli_real_escape_string($con, $_POST['Seller_address']);

    $Seller_image = $_FILES['Seller_image']['name'];

    $Seller_image_tmp = $_FILES['Seller_image']['tmp_name'];

    $Seller_ip = getRealUserIp();

    if (!filter_var($Seller_email, FILTER_VALIDATE_EMAIL)) {

        echo "<script> alert('Your Email is not a valid email address.'); </script>";

        exit();

    }

    $allowed = array('jpeg', 'jpg', 'gif', 'png');

    $file_extension = pathinfo($Seller_image, PATHINFO_EXTENSION);

    if (!in_array($file_extension, $allowed)) {

        echo "<script> alert('Your Image Format,Extension Is Not Supported.'); </script>";

        exit();

    } else {

        move_uploaded_file($Seller_image_tmp, "seller/seller_images/$Seller_image");

    }

    $get_email = "select * from sellers where seller_email='$Seller_email'";

    $run_email = mysqli_query($con, $get_email);

    $check_email = mysqli_num_rows($run_email);

    if ($check_email == 1) {

        echo "<script>alert('This email is already registered, try another one')</script>";

        exit();

    }

    $Seller_confirm_code = mt_rand();

    $subject = "Email Confirmation Message";

    $from = "sad.ahmed22224@gmail.com";

    $message = "

<h2>
Email Confirmation By Computerfever.com $c_name
</h2>

<a href='localhost/ecom_store/customer/my_account.php?$Seller_confirm_code'>

Click Here To Confirm Email

</a>

";

    $headers = "From: $from \r\n";

    $headers .= "Content-type: text/html\r\n";

    mail($Seller_email, $subject, $message, $headers);

    $insert_Seller = "insert into Sellers (Seller_name,business_name,b_accno,b_ifsc,b_name,tax_no,tax_info_no,t_ifsc,t_name,Seller_email,Seller_password,Seller_country,Seller_city,Seller_contact,Seller_address,Seller_image,Seller_ip,Seller_confirm_code) values ('$Seller_name','$business_name','$b_accno','$b_ifsc','$b_name','$tax_no','$tax_info_no','$t_ifsc','$t_name','$Seller_email','$encrypted_password','$Seller_country','$Seller_city','$Seller_contact','$Seller_address','$Seller_image','$Seller_ip','$Seller_confirm_code')";

    $run_Seller = mysqli_query($con, $insert_Seller);

    $last_insert_Seller_id = mysqli_insert_id($con);

    $insert_Sellers_addresses = "insert into Sellers_addresses (Seller_id) values ('$last_insert_Seller_id')";

    $run_Sellers_addresses = mysqli_query($con, $insert_Sellers_addresses);

    $sel_cart = "select * from cart where ip_add='$Seller_ip'";

    $run_cart = mysqli_query($con, $sel_cart);

    $check_cart = mysqli_num_rows($run_cart);

    if ($check_cart > 0) {

        $_SESSION['Seller_email'] = $Seller_email;

        echo "<script>alert('You have been Registered Successfully')</script>";

        echo "<script>window.open('seller_login.php','_self')</script>";

    } else {

        $_SESSION['Seller_email'] = $Seller_email;

        echo "<script>alert('You have been Registered Successfully')</script>";

        echo "<script>window.open('seller_index.php','_self')</script>";


    }

}

?>
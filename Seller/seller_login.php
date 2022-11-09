<?php

if (!defined("seller_login")) {

    echo "<script> window.open('../seller_login','_self'); </script>";

}

?>

<div class="box">
    <!-- box Starts -->

    <div class="box-header">
        <!-- box-header Starts -->

        <center>

            <h1>Login</h1>

            <p class="lead">Already our Customer</p>


        </center>

        <p class="text-muted">
            Business to Consumer (B2C): When a business sells a good or service to an individual consumer Like You buy
            Physical and Electronics Products from an online shopping.

        </p>




    </div><!-- box-header Ends -->

    <form action="seller_login.php" method="post">
        <!--form Starts -->

        <div class="form-group">
            <!-- form-group Starts -->

            <label>Email</label>

            <input type="text" class="form-control" name="Seller_email" required>

        </div><!-- form-group Ends -->

        <div class="form-group">
            <!-- form-group Starts -->

            <label>Password</label>

            <input type="password" class="form-control" name="Seller_password" required>

            <h4 align="center">

                <a href="forgot_pass.php"> Forgot Password </a>

            </h4>

        </div><!-- form-group Ends -->

        <div class="text-center">
            <!-- text-center Starts -->

            <button name="login" value="Login" class="btn btn-primary">

                <i class="fa fa-sign-in"></i> Log in


            </button>

        </div><!-- text-center Ends -->


    </form>
    <!--form Ends -->

    <center>
        <!-- center Starts -->

        <a href="seller_register.php">

            <h3>New ? Register Here</h3>

        </a>


    </center><!-- center Ends -->


</div><!-- box Ends -->

<?php

if (isset($_POST['login'])) {

    $Seller_email = mysqli_real_escape_string($con, $_POST['Seller_email']);

    $Seller_password = mysqli_real_escape_string($con, $_POST['Seller_password']);

    $select_Seller = "select * from Sellers where Seller_email='$Seller_email'";

    $run_Seller = mysqli_query($con, $select_Seller);

    $check_Seller = mysqli_num_rows($run_Seller);

    $row_Seller = mysqli_fetch_array($run_Seller);

    $hash_password = $row_Seller['Seller_password'];

    $decrypt_password = password_verify($Seller_password, $hash_password);

    if ($decrypt_password == 0) {

        echo "<script>alert('your password or email is wrong')</script>";

        exit();

    }

    $get_ip = getRealUserIp();

    $select_cart = "select * from cart where ip_add='$get_ip'";

    $run_cart = mysqli_query($con, $select_cart);

    $check_cart = mysqli_num_rows($run_cart);

    if ($check_Seller == 1 and $check_cart == 0) {

        $_SESSION['Seller_email'] = $Seller_email;

        echo "<script>alert('You are Logged In')</script>";

        echo "<script>window.open('Seller/my_account.php?my_orders','_self')</script>";

    } else {

        $_SESSION['Seller_email'] = $Seller_email;

        echo "<script>alert('You are Logged In')</script>";

        echo "<script>window.open('seller_login.php','_self')</script>";

    }


}

?>
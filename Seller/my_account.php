<?php

session_start();

if(!isset($_SESSION['Seller_email'])){

echo "<script>window.open('../seller_login.php','_self')</script>";


}else {




include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>
<html>

<head>
<title>Stelomart </title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >

<link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

<link href="styles/bootstrap.min.css" rel="stylesheet">

<link href="styles/style.css" rel="stylesheet">

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<div id="top"><!-- top Starts -->

<div class="container"><!-- container Starts -->

<div class="col-md-6 offer"><!-- col-md-6 offer Starts -->

<a href="#" class="btn btn-success btn-sm" >
<?php

if(!isset($_SESSION['Seller_email'])){

echo "Welcome :Guest";


}else{

echo "Welcome : " . $_SESSION['Seller_email'] . "";

}


?>
</a>

</div><!-- col-md-6 offer Ends -->

<div class="col-md-6"><!-- col-md-6 Starts -->
<ul class="menu"><!-- menu Starts -->

<li>
<a href="../seller_register.php">
Register
</a>
</li>

<li>
<?php

if(!isset($_SESSION['seller_email'])){

echo "<a href='../seller_login.php' >My Account</a>";

}
else{

echo "<a href='my_account.php?my_status'>My Account</a>";

}


?>
</li>

<li>
<a href="../cart.php">
Go to Cart
</a>
</li>

<li>
<?php

if(!isset($_SESSION['Seller_email'])){

echo "<a href='../seller_login.php'> Login </a>";

}else {

echo "<a href='logout.php'> Logout </a>";

}

?>
</li>

</ul><!-- menu Ends -->

</div><!-- col-md-6 Ends -->

</div><!-- container Ends -->
</div><!-- top Ends -->

<div class="navbar navbar-default" id="navbar"><!-- navbar navbar-default Starts -->
<div class="container" ><!-- container Starts -->

<div class="navbar-header"><!-- navbar-header Starts -->

<a class="navbar-brand home" href="../index.php" ><!--- navbar navbar-brand home Starts -->

<img src="images/EcommerceStore.png" alt="computerfever logo" class="hidden-xs" >
<img src="images/EcommerceStoreSmall.png" alt="computerfever logo" class="visible-xs" >

</a><!--- navbar navbar-brand home Ends -->

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation"  >

<span class="sr-only" >Toggle Navigation </span>

<i class="fa fa-align-justify"></i>

</button>

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search" >

<span class="sr-only" >Toggle Search</span>

<i class="fa fa-search" ></i>

</button>


</div><!-- navbar-header Ends -->

<div class="navbar-collapse collapse" id="navigation" ><!-- navbar-collapse collapse Starts -->

<div class="padding-nav" ><!-- padding-nav Starts -->

<ul class="nav navbar-nav navbar-left"><!-- nav navbar-nav navbar-left Starts -->

<li>
<a href="../index.php"> Home </a>
</li>

<li>
<a href="../shop.php"> Shop </a>
</li>

<li class="active">
<?php

if(!isset($_SESSION['Seller_email'])){

echo "<a href='../seller_login.php' >My Account</a>";

}
else{

echo "<a href='my_account.php?my_orders'>My Account</a>";

}


?>
</li>

<li>
<a href="../cart.php"> Shopping Cart </a>
</li>

<li>
<a href="../about.php"> About Us </a>
</li>

<li>

<a href="../services.php"> Services </a>

</li>

<li>
<a href="../contact.php"> Contact Us </a>
</li>

</ul><!-- nav navbar-nav navbar-left Ends -->

</div><!-- padding-nav Ends -->

<a class="btn btn-primary navbar-btn right" href="../cart.php"><!-- btn btn-primary navbar-btn right Starts -->

<i class="fa fa-shopping-cart"></i>

<span> <?php items(); ?> items in cart </span>

</a><!-- btn btn-primary navbar-btn right Ends -->

<div class="navbar-collapse collapse right"><!-- navbar-collapse collapse right Starts -->

<button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" data-target="#search">

<span class="sr-only">Toggle Search</span>

<i class="fa fa-search"></i>

</button>

</div><!-- navbar-collapse collapse right Ends -->

<div class="collapse clearfix" id="search"><!-- collapse clearfix Starts -->

<form class="navbar-form" method="get" action="results.php"><!-- navbar-form Starts -->

<div class="input-group"><!-- input-group Starts -->

<input class="form-control" type="text" placeholder="Search" name="user_query" required>

<span class="input-group-btn"><!-- input-group-btn Starts -->

<button type="submit" value="Search" name="search" class="btn btn-primary">

<i class="fa fa-search"></i>

</button>

</span><!-- input-group-btn Ends -->

</div><!-- input-group Ends -->

</form><!-- navbar-form Ends -->

</div><!-- collapse clearfix Ends -->

</div><!-- navbar-collapse collapse Ends -->

</div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->


<div id="content" ><!-- content Starts -->
<div class="container-fluid" ><!-- container-fluid Starts -->

<div class="col-md-12" ><!--- col-md-12 Starts -->

<ul class="breadcrumb" ><!-- breadcrumb Starts -->

<li>
<a href="index.php">Home</a>
</li>

<li>My Account</li>

</ul><!-- breadcrumb Ends -->



</div><!--- col-md-12 Ends -->

<div class="col-md-12"><!-- col-md-12 Starts -->

<?php

$Seller_email = $_SESSION['Seller_email'];

$get_Seller = "select * from Sellers where Seller_email='$Seller_email'";

$run_Seller = mysqli_query($con,$get_Seller);

$row_Seller = mysqli_fetch_array($run_Seller);

$Seller_confirm_code = $row_Seller['Seller_confirm_code'];

$Seller_name = $row_Seller['Seller_name'];

if(!empty($Seller_confirm_code)){

?>

<div class="alert alert-danger"><!-- alert alert-danger Starts -->

<strong> Warning! </strong> Please Confirm Your Email and if you have not received your confirmation email

<a href="my_account.php?send_email" class="alert-link"> 

Send Email Again

</a>

</div><!-- alert alert-danger Ends -->

<?php } ?>

</div><!-- col-md-12 Ends -->

<div class="col-md-3"><!-- col-md-3 Starts -->

<?php include("includes/sidebar.php"); ?>

</div><!-- col-md-3 Ends -->

<div class="col-md-9" ><!--- col-md-9 Starts -->

<div class="box" ><!-- box Starts -->

<?php

if(isset($_GET[$Seller_confirm_code])){

$update_Seller = "update Sellers set Seller_confirm_code='' where Seller_confirm_code='$Seller_confirm_code'";

$run_confirm = mysqli_query($con,$update_Seller);

echo "<script>alert('Your Email Has Been Confirmed')</script>";

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}

if(isset($_GET['send_email'])){

$subject = "Email Confirmation Message";

$from = "Ahmed.fci_0006@fci.kfs.edu.eg";

$message = "

<h2>
Email Confirmation By EcomStore.com $Seller_name
</h2>

<a href='localhost/ecom_store/customer/my_account.php?$Seller_confirm_code'>

Click Here To Confirm Email

</a>

";

$headers = "From: $from \r\n";

$headers .= "Content-type: text/html\r\n";

mail($Seller_email,$subject,$message,$headers);

echo "<script>alert('Your Confirmation Email Has Been sent to you, check your inbox')</script>";

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}



if(isset($_GET['my_orders'])){

include("my_orders.php");

}

if(isset($_GET['my_addresses'])){

include("my_addresses.php");

}

if(isset($_GET['pay_offline'])) {

include("pay_offline.php");

}

if(isset($_GET['edit_account'])) {

include("edit_account.php");

}

if(isset($_GET['change_pass'])){

include("change_pass.php");

}

if(isset($_GET['delete_account'])){

include("delete_account.php");

}

if(isset($_GET['my_wishlist'])){

include("my_wishlist.php");

}

if(isset($_GET['delete_wishlist'])){

include("delete_wishlist.php");

}

?>

</div><!-- box Ends -->


</div><!--- col-md-9 Ends -->

</div><!-- container-fluid Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

</body>
</html>
<?php } ?>
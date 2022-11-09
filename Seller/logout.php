<?php

@session_start();

if (!isset($_SESSION["Seller_email"])) {

    echo "<script>window.open('../seller_login.php','_self');</script>";

}

?>

<?php

session_start();

session_destroy();

echo "<script>window.open('../seller_index.php','_self')</script>";


?>
<?php
    include 'connect.php';
    $sql="SELECT * FROM customer";
    $result=$con->query($sql);
    if(isset($_POST['submit'])){
        $username=$_POST['username'];
        $password=$_POST['password'];
        $firstname=$_POST['first_name'];
        $lastname=$_POST['last_name'];
        $phonenumeber=$_POST['phone'];
        $gender=$_POST['gender'];
        if($username==""||$password==""||$firstname==""||$lastname==""||$phonenumeber==""||$gender=="")
        {
            echo "<script>alert('คุณกรอกข้อมูลไม่ครบ')</script>";
        }
            else
            {
                $sql2="SELECT cus_id FROM customer WHERE cus_id='$username'";
                $result2=$con->query($sql2);
                $num=mysqli_num_rows($result2);
                $sql3="SELECT username FROM user WHERE username='$username'";
                $result3=$con->query($sql3);
                $num3=mysqli_num_rows($result3);
                if($num==1 || $num3==1){
                    echo "<script>alert('Username นี้มีอยู่แล้ว')</script>";
                }
                else{
                    if($gender=="male")
                    {
                        $sql="INSERT  INTO customer (cus_id,cus_password,title_name,cus_name,cus_lastname,cus_tel) 
                        VALUES('$username','$password','นาย','$firstname','$lastname','$phonenumeber')";
                        $result=$con->query($sql);
                        if(!$result){
                        echo "<script>alert('ไม่สามารถเพิ่มข้อมูลได้')</script>";
                        }
                        else{
                        echo "<script>window.location.href='login.php'</script>";
                        } 
                    }
                    else
                    {
                        $sql="INSERT  INTO customer (cus_id,cus_password,title_name,cus_name,cus_lastname,cus_tel) 
                        VALUES('$username','$password','นาง','$firstname','$lastname','$phonenumeber')";
                        $result=$con->query($sql);
                        if(!$result){
                        echo "<script>alert('ไม่สามารถเพิ่มข้อมูลได้')</script>";
                        }
                        else{
                        echo "<script>window.location.href='login.php'</script>";
                        } 
                    }
                    
                }
            }
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Signup page</title>
    <link rel="icon" href="fav.png" />

    <!-- Icons font CSS-->
    <link href="signup/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="signup/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="signup/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="signup/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="signup/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registration Form</h2>
                    <form action="<?php $_SERVER['PHP_SELF']?>" method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Username</label>
                                    <input class="input--style-4" type="text" name="username">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="text" name="password">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                    <input class="input--style-4" type="text" name="first_name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <input class="input--style-4" type="text" name="last_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                        <label class="label">Phone Number</label>
                                        <input class="input--style-4" type="text" name="phone">
                                    </div>
                                </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="male">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="female">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit" name="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="signup/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="signup/vendor/select2/select2.min.js"></script>
    <script src="signup/vendor/datepicker/moment.min.js"></script>
    <script src="signup/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="signup/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
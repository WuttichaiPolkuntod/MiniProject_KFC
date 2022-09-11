<?php
    include 'navbar.php';
    include 'connect.php';
    $sql="SELECT * FROM product";
    $result=$con->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="favicon.ico"><title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
    <link href="admin/test/css/styles.css" rel="stylesheet" />
</head>
<body>
    <header class="bg-danger py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">KFC Shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">The best chicken in the town</p>
                </div>
            </div>
    </header>

    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <?php
            $counter=1;
            while(($row=mysqli_fetch_array($result))){
            ?>
                <div class="col mb-5">
                    <div class="card h-100 bg-danger">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center text-white">
                                <!-- Product name-->
                                <h5 class="fw-bolder text-white"><?php echo $row['pro_name'] ?></h5>
                                <!-- Product price-->
                                <?php echo $row['pro_price'] ?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-Light mt-auto text-white" href="#">View options</a></div>
                        </div>
                    </div>
                </div>
            <?php $counter++;} ?>               
            </div>
        </div> 
    </section>
</body>
</html>
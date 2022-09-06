<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="test/css/styles.css" rel="stylesheet" />
<nav class="navbar navbar-expand-lg navbar-light bg-danger">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-white" href="#!">KFC Shop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active text-white" aria-current="page" href="#!">หน้าแรก</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#!">About</a></li>
                    </ul>
                    <div class="d-flex mx-3">
                        <?php
                            session_start();
                            @$name=$_SESSION['name'];
                            if($name!=""){
                        ?>
                        <ul class="navbar-nav">
                            <li class="nav-link">
                                <a class="btn text-white btn-outline-light" href="">
                                    <?php
                                        echo $name;
                                    ?>    
                                </a>
                            </li>
                            <li class="nav-link">
                                <a class="btn btn-outline-light text-white" href="logout.php">Log out</a>
                            </li>    
                        </ul>
                        <?php }
                        else {?>
                        <a href="login.php" class="btn btn-outline-light">Log in</a>
                        <a href="admin/login-form-14/login.php" class="btn btn-outline-light">Log in</a>
                        <?php } ?>
                        </div>

                    <div class="d-flex">
                        <button class="btn btn-outline-light" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-light text-black ms-1 rounded-pill">0</span>
                        </button>
                    </div>
                </div>
            </div>
        </nav>
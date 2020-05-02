<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CHÀO MỪNG CÁC BẠN ĐẾN VỚI TRANG ADMIN -THUEXEHAIDANG</title>

    <!-- Core CSS - Include with every page -->
    <link href="<?= base_url() ?>public/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>public/admin/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="<?= base_url() ?>public/admin/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>public/admin/css/plugins/timeline/timeline.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="<?= base_url() ?>public/admin/css/sb-admin.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">THUEXEHAIDANG</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> HẢI ĐĂNG</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Đăng Nhập/ Đăng ký</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="/xehaidang/thoat.php"><i class="fa fa-sign-out fa-fw"></i> Thoát</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Trang Chủ</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Danh sách <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<?= base_url() ?>admin/modules/category/index.php">Danh mục</a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>admin/modules/product/index.php">Sản phẩm xe</a>
                            </li>

                            <li>
                                <a href="<?= base_url() ?>admin/modules/users/index.php">Thành Viên</a>
                            </li>

                            <li>
                                <a href="<?= base_url() ?>admin/modules/users/index.php">Người Dùng</a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>admin/modules/tin-tuc/index.php">Tin Tức</a>
                            </li>

                            <li>
                                <a href="<?= base_url() ?>admin/modules/menu/index.php">Menu</a>
                            </li>

                            <li>
                                <a href="<?= base_url() ?>admin/modules/transaction/index.php">Hóa Đơn</a>
                            </li>
                            <!--                                <li>-->
                            <!--                                    <a href="http://localhost:9999/xehaidang/admin/modules/transaction/index.php">Chi tiết hóa đơn</a>-->
                            <!--                                </li>-->
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


<!--                    <li>-->
<!--                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Trang liên quan<span-->
<!--                                    class="fa arrow"></span></a>-->
<!--                        <ul class="nav nav-second-level">-->
<!---->
<!--                            <li>-->
<!--                                <a href="index.php">Thoát trang</a>-->
<!--                            </li>-->
<!--                        </ul>-->
                        <!-- /.nav-second-level -->
<!--                    </li>-->
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>
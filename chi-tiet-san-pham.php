<?php
require_once __DIR__ . "/autoload/autoload.php";
require_once __DIR__ . "/libraries/function.php";
$id = intval(getInput('id'));
$dsproductId = $db->fetchID('product', $id);
$idcate = intval($dsproductId['category_id_chil']);
$sql = "SELECT product.*,category_chil.fixcate from product LEFT JOIN category_chil on category_chil.id=$idcate ";

$kt = $db->fetchsql($sql);

if (isset($kt)) {
    foreach ($kt as $key) {
        if (intval($key['fixcate']) == 1) {
            $sqlsocho = "4";
            break;
        } else {
            $sqlsocho = "7";
            break;
        }
    }
}
//xử lý ngày
$data = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!isset($_SESSION['name_id'])) {
        echo " <script>alert(' Đăng nhập để đặt xe');location.href='dang-nhap.php' </script> ";
    }

    // Check xe đã đặt hay chưa
    $transaction = $db->fetchOne('transaction', ' product_id =  ' . $id . ' and status != 2 ');
    if ($transaction) {
        echo " <script>alert(' Xe đã có người đặt xin vui lòng đặt xe khác ');window.location.href = 'index.php' </script> ";
    }

    $data =
        [
            "time_start" => postInput('time_start'),
            "time_stop" => postInput('time_stop'),
            "product_id" => postInput('id'),
            "type" => postInput('type'),
            "amount" => postInput('price')
        ];

    $errors = [];
    if (postInput('time_start') == '') {
        $errors['time_start'] = "Mời bạn nhập đầy đủ ngày nhận xe";
    }
    if (postInput('time_stop') == '') {
        $errors['time_stop'] = "Mời bạn nhập đầy đủ ngày trả xe";
    }

    if (empty($errors)) {
        $data['users_id'] = $_SESSION['name_id'];
        $id_insert = $db->insert("transaction", $data);
        if ($id_insert > 0) {
            echo " <script>alert(' Đặt xe thành công');location.href='index.php' </script> ";
        }
    }
}
?>

<?php require_once __DIR__ . "/layouts/header.php"; ?>
<style>
    .vhc_icon {
        width: 20px;
        height: 20px;
        margin-right: 10px;
    }

    .b-tit {
        font-weight: bold;
        margin: 10px 0;
    }

    .mb-md {
        margin: 5px 0;
    }
</style>
<div class="main">
    <div class="container">
        <!--NỘI DUNG CHÍNH , PHẦN NÀY SẼ THAY ĐỔI THEO TRANG -->
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <div class="left-content">
                    <div class="shadow p-lg mb-xlg">
                        <div class="model row">
                            <div class="col-sm-6"><a><img
                                            src="public/uploads/product/<?php echo $dsproductId['thunbar'] ?>"></a>
                            </div>
                            <div class="col-sm-6">
                                <div class="tit3 mt-md mb-xs"><?php echo $dsproductId['name'] ?></div>
                                <div class="stars large mb-md">
                                    <img src="public/frontend/Images/star-on.png" style="width: 25px;height: 25px;"
                                         alt="vehicle">
                                    <img src="public/frontend/Images/star-on.png" style="width: 25px;height: 25px;"
                                         alt="vehicle">
                                    <img src="public/frontend/Images/star-on.png" style="width: 25px;height: 25px;"
                                         alt="vehicle">
                                    <img src="public/frontend/Images/star-on.png" style="width: 25px;height: 25px;"
                                         alt="vehicle">
                                    <img src="public/frontend/Images/star-off.png" style="width: 25px;height: 25px;"
                                         alt="vehicle">
                                </div>
                                <div class="info mb-none" style="margin-top: 20px;">
                                    <div style="float:left;width: 49%;margin: 5px 0">
                                        <img src="public/frontend/Images/ic-fuel.png" class="vhc_icon"
                                             style="width: 20px;height: 20px;margin-right: 10px"><span>Xăng</span>
                                    </div>
                                    <div style="float:left;width: 49%;margin: 5px 0"><img
                                                style="width: 20px;height: 20px;margin-right: 10px"
                                                src="public/frontend/Images/piston.png"
                                                class="vhc_icon"><span>1.2L</span></div>
                                    <div style="float:left;width: 49%;margin: 5px 0"><img
                                                style="width: 20px;height: 20px;margin-right: 10px"
                                                src="public/frontend/Images/ic-tms.png" class="vhc_icon"><span>Số tự động</span>
                                    </div>
                                    <div style="float:left;width: 49%;margin: 5px 0"><img
                                                style="width: 20px;height: 20px;margin-right: 10px"
                                                src="public/frontend/Images/ic-seat.png"
                                                class="vhc_icon"><span><?php echo $sqlsocho ?> chỗ</span></div>
                                    <div style="float:left;width: 49%;margin: 5px 0"><img
                                                style="width: 20px;height: 20px;margin-right: 10px"
                                                src="public/frontend/Images/ic-car.png"
                                                class="vhc_icon"><span>Hatchback</span></div>
                                    <div style="float:left;width: 49%;margin: 5px 0"><img
                                                style="width: 20px;height: 20px;margin-right: 10px"
                                                src="public/frontend/Images/gauge.png"
                                                class="vhc_icon"><span>8l/100km</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-xlg">
                            <div class="col-md-12">
                                <div class="mb-md">
                                    <div class="b-tit">ĐỊA CHỈ <b>Nghệ An</b></div>
                                </div>
                                <div class="mb-md">
                                    <div class="b-tit">TÍNH NĂNG</div>
                                    <div class="row i-lg">
                                        <div class="col-lg-4 col-md-6 mb-md"><img
                                                    src="public/frontend/Images/ic-brakes.png" alt="Điều hoà (A/C) "
                                                    class="vhc_icon"><span>Điều hoà (A/C) </span></div>
                                        <div class="col-lg-4 col-md-6 mb-md"><img
                                                    src="public/frontend/Images/ic-gprs.png" alt="Định vị (GPS) "
                                                    class="vhc_icon"><span>Định vị (GPS) </span></div>
                                        <div class="col-lg-4 col-md-6 mb-md"><img
                                                    src="public/frontend/Images/ic-bluetooth.png" alt="Bluetooth "
                                                    class="vhc_icon"><span>Bluetooth </span></div>
                                        <div class="col-lg-4 col-md-6 mb-md"><img
                                                    src="public/frontend/Images/ic-usb.png" alt="Khe cắm USB"
                                                    class="vhc_icon"><span>Khe cắm USB</span></div>
                                    </div>
                                </div>
                                <div class="mb-md">
                                    <div class="b-tit">THỦ TỤC</div>
                                    <div class="row i-lg">
                                        <div class="col-lg-4 col-md-6 mb-md"><span style="float: left;"><img
                                                        src="public/frontend/Images/CMND.png" alt="procedure"
                                                        class="vhc_icon"></span><span style="float: left; width: auto;">CMND</span>
                                        </div>
                                        <div class="col-lg-4 col-md-6 mb-md"><span style="float: left;"><img
                                                        src="public/frontend/Images/ic-cmnd.png" alt="procedure"
                                                        class="vhc_icon"></span><span style="float: left; width: auto;">Sổ hộ khẩu</span>
                                        </div>
                                        <div class="col-lg-4 col-md-6 mb-md"><span style="float: left;"><img
                                                        src="public/frontend/Images/banglai.png" alt="procedure"
                                                        class="vhc_icon"></span><span style="float: left; width: auto;">Bằng lái</span>
                                        </div>
                                        <div class="col-lg-4 col-md-6 mb-md"><span style="float: left;"><img
                                                        src="public/frontend/Images/ic-money.png" alt="procedure"
                                                        class="vhc_icon"></span><span style="float: left; width: auto;">Đặt cọc</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-md">
                                    <div class="b-tit">CHẤP NHẬN THANH TOÁN</div>
                                    <div class="row i-lg">
                                        <div class="col-lg-4 col-md-6 mb-md"><span style="float: left;"><img
                                                        src="public/frontend/Images/ic-money.png" alt="payment"
                                                        class="vhc_icon"></span><span style="float: left; width: 73%;">Trả sau</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-md">
                                    <div class="b-tit">GHI CHÚ</div>
                                    <div>
                                        <p> - CMND: Bản Gốc</p>
                                        <p> - Sổ hộ khẩu: Bản gốc hoặc Giấy phép Kinh doanh</p>
                                        <p> - Bằng lái: B2 trở lên</p>
                                        <p> - Đặt cọc: Vui lòng đặt cọc tiền 7-10 triệu</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="right-info ">
                    <div class="shadow mb-xlg p-lg">
                        <div class="pr text-center">GIÁ VÀ THỦ TỤC</div>
                        <form class="cap form-horizontal" action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group position-relative form-group">
                                <label class=" text-sm-right pt-2">HÌNH THỨC NHẬN XE</label>
                                <div class="input-form select-box ">
                                    <div>
                                        <select name="type" class="form-control">
                                            <option value="1">Nhận xe tại đại lý</option>
                                            <option value="2">Nhận xe tại nhà</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group position-relative form-group">
                                <label class=" pt-2">Thời gian nhận xe</label>
                                <input class="form-control" name="time_start" type="date" data-date-format="yyyy/dd/mm">
                                <?php if (isset($errors['time_start'])) : ?>
                                    <span style="color: red"><?= $errors['time_start'] ?></span>
                                <?php endif; ?>
                            </div>
                            <div class="form-group position-relative form-group">
                                <label class=" pt-2">Thời gian trả xe</label>
                                <input class="form-control" name="time_stop" type="date" data-date-format="yyyy/dd/mm">
                                <?php if (isset($errors['time_stop'])) : ?>
                                    <span style="color: red"><?= $errors['time_stop'] ?></span>
                                <?php endif; ?>
                            </div>
                            <input type="hidden" name="id" value="<?= $dsproductId['id'] ?>">
                            <input type="hidden" name="price" value="<?= $dsproductId['price'] ?>">

                            <div class="form-group  position-relative form-group">
                                <label class="pt-1">GIỚI HẠN QUÃNG ĐƯỜNG</label>
                                <div class="form-control-static pt-none"><span
                                            style="float: none; font-weight: normal;">Tối đa 250km/ngày</span><span
                                            style="float: none; font-weight: normal; text-transform: lowercase;">, Phụ trội 30.000 đ/km </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Đặt xe</button>
                            </div>
                            <div class="form-group mb-none position-relative form-group">
                                <label class="pt-2">CHI TIẾT GIÁ</label>
                                <p style="color: red; font-weight: bold;" class="form-control-static p-none">Đơn giá
                                    ngày <span><?php echo formatPrice($dsproductId['price']) ?> vnđ</span></p>
                                <p class="form-control-static pt-none">Ngày: <span>0 ngày</span></p>
                            </div>

                            <div class="sum ">
                                <p class="pull-left text-left">TỔNG</p>
                                <p style="color:red; font-weight: bold;" class="pull-right text-right"> 0 vnđ</p>
                            </div>
                            <div class="form-group mb-none position-relative form-group">
                                <br>
                                <span style="color:red; font-weight: bold;" class="pt-2">---------LƯU Ý--------</span>
                                <br>
                                <span class="form-control-static pt-none">- Số tiền tổng cộng trên chưa bao gồm số tiền phụ trội</span>
                                <br>
                                <span class="form-control-static p-none">- Số km vượt tính phụ trội: được tính theo km của google map</span>
                                <br>
                                <span class="form-control-static p-none">- Hình thức tính: bạn vui lòng chọn địa điểm đi và địa điểm đến, goole map sẽ định vị và tính cho bạn chính xác nhất</span>
                                <br>
                                <span class="form-control-static pt-none">- Phụ trội sẽ được cộng vào khi khách trả xe thanh toán sau</span>
                                <br>
                                <span class="form-control-static pt-none">- Nếu khách muốn thanh toán ngay vui lòng đặt xe, sẽ có nhận viên liên hệ tư vấn thêm phụ trội</span>
                            </div>

                            <div class="btn btn-block mt-md"
                                 style="background: linear-gradient(to right, rgb(15, 149, 155), rgb(6, 74, 80)); color: rgb(255, 255, 255); padding: 14px 1.2rem; border: none; min-width: 150px; font-weight: 500;">
                                <p><a href="addcart.php?id=<?php echo $item['id'] ?>"><i
                                                class="fa fa-shopping-basket"> </i></a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    .prod, .shadow {
        -webkit-box-shadow: 0px 2px 14.7px 1.3px rgba(0, 0, 0, 0.16);
        box-shadow: 0 0px 10px 0 rgba(31, 28, 38, 0.35);
        border-radius: 5px;
        margin-bottom: 15px;
        background: #fff;
        overflow: hidden;
        border-radius: 8px;
    }

    .p-lg {
        padding: 20px !important;
    }

    .mb-xlg {
        margin-bottom: 30px !important;
    }

    .tit3 {
        color: #107d82;
        font-size: 24px;
        font-weight: 700;
        text-transform: uppercase;
        text-align: left;
        margin-bottom: 13px;
    }

    .mb-xs {
        margin-bottom: 5px !important;
    }

    .mt-md {
        margin-top: 25px !important;
    }

    .stars.large img {
        width: 26px;
        margin: 2px 2px 10px 0px;
    }

    .stars img {
        float: left;
        margin: 0px 4px 0px 0px;
        width: 15px;
        margin-bottom: 15px;
        border: none;
        padding: 0px;
    }

    .model .info {
        margin-bottom: 15px;
        clear: both;
    }

    .mb-none {
        margin-bottom: 0 !important;
    }

    .model .info div {
        font-size: 16px;
        margin-bottom: 12px;
        text-align: left;
        width: 50%;
        float: left;

    }

    img {
        max-width: 100%;
        height: auto;
    }

    img {
        border: 0;
        -ms-interpolation-mode: bicubic;
        vertical-align: middle;
    }

    .vhc_icon {
        width: auto;
        height: 24px;
        margin-right: 16px;
    }

    .mt-xlg {
        margin-top: 30px !important;
    }

    .mb-md {
        margin-bottom: 15px !important;
    }

    form.cap label, .b-tit {
        font-size: 16px;
        text-transform: uppercase;
        font-weight: 600;
        color: #333;
        margin-bottom: 10px;
        text-align: left;
    }

    .p-lg {
        padding: 20px !important;
    }

    .mb-xlg {
        margin-bottom: 30px !important;
    }

    .pr {
        color: #107d82;
        font-size: 24px;
        font-weight: 700;
        padding: 20px 0px;
    }

    .text-center {
        text-align: center !important;
    }

    form.cap {
        text-align: left;
    }

    .form-group {
        padding: 0 !important;
        margin-bottom: 12px;
    }

    .text-sm-right {
        text-align: right !important;
    }

    .pt-2 {
        padding-top: .5rem !important;
    }

    .select-box {
        position: relative;
    }

    .sum {
        border-top: 2px solid #dedede;
        padding-top: 10px;
    }

    .btn {
        min-width: 129px !important;
        text-align: center;
    }

    .btn, btn:active, .btn:focus, .btn:visited {
        background: linear-gradient(to right, #0f959b, #064a50);
        color: #fff;
        padding: 14px 1.2rem;
        border: none;
        min-width: 150px;
        font-weight: 500;
    }

    .btn-block {
        display: block;
        width: 100%;
    }

    option {
        color: #333;
        height: 40px;
    }
</style>
<style type="text/css">
    label {
        margin-left: 20px;
    }

    #datepicker {
        width: 180px;
        margin: 0 20px 20px 20px;
    }

    #datepicker > span:hover {
        cursor: pointer;
    }
</style>

<?php require_once __DIR__ . "/layouts/footer.php"; ?>

<!--hiển thị menu TRANG INDEX.PHP-->
<script type="text/javascript">

    $(document).ready(function () {
        console.log('1111');
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () {
            $(".menu-quick-select ul").show();
        }, function () {
            $(".menu-quick-select ul").hide();
        });

    });

</script>

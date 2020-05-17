<?php
require_once __DIR__ . "/autoload/autoload.php";

if (!isset($_SESSION['name_id'])) {
    echo " <script> Swal.fire({type: 'error', title: 'Thông báo', text: 'Bạn phải đăng nhập!', timer: 1300,showLoaderOnConfirm: true,closeOnConfirm: false}).then(function() {
                window.location.href='dang-nhap.php';                              
            }); </script>  ";
}

$id = intval(getInput('id'));


$product = $db->fetchID("product", $id);
die('1');

if (!isset($_SESSION['cart'][$id])) {
    $_SESSION['cart'][$id]['name'] = $product['name'];
    $_SESSION['cart'][$id]['thunbar'] = $product['thunbar'];
    $_SESSION['cart'][$id]['qty'] = 1;
    $_SESSION['cart'][$id]['price'] = ((100 - $product['sale']) * $product['price']) / 100;
} else {
    $_SESSION['cart'][$id]['qty'] += 1;
}
die('1');
echo " <script> Swal.fire({type: 'success', title: 'Thông báo', text: 'Thêm sản phẩm thành công!', timer: 1300,showLoaderOnConfirm: true,closeOnConfirm: false}).then(function() {
                window.location.href='gio-hang.php';                              
            }); </script>  ";
?>



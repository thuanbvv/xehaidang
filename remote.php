<?php
require_once __DIR__ . "/autoload/autoload.php";
$key = intval(getInput('key'));
$action = intval(getInput('action'));
if ($action == 0){
//    var_dump($_SESSION['cart'][$key]['id_transaction']);
    $db->deletesql("transaction", "id = " . $_SESSION['cart'][$key]['id_transaction']);
    if($db){
        unset($_SESSION['cart'][$key]);
        $_SESSION['success'] = "Xóa thành công";
    }else{
        $_SESSION['success'] = "Xóa không thành công, thử lại";
    }
}else if (isset($_SESSION['cart'][$key])){
    $quantity = intval(getInput('qty'));
    $_SESSION['cart'][$key]['qty'] = $quantity;
    $_SESSION['success'] = "Cập nhật thành công";
}
header("location: gio-hang.php");
?>
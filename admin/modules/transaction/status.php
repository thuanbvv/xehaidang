<?php
$open = "transaction";
require_once __DIR__ . "/../../autoload/autoload.php";

$id = intval(getInput('id'));
$statustransaction = $db->fetchID('transaction', $id);

if (empty($statustransaction)) {
    $_SESSION['erro'] = "Dữ liệu không tồn tại";
    redirectAdmin('transaction');
}


$status = getInput('status');
$update = $db->update("transaction", array("status" => $status), array("id" => $id));

if ($update > 0) {
    $_SESSION['success'] = "Cập nhật thành công";

    $sql = " SELECT product_id,qty from orders where transaction_id = $id ";
    $orders = $db->fetchsql($sql);


    redirectAdmin("transaction");
} else {
    $_SESSION['error'] = "Dữ liệu không thay đổi";
    redirectAdmin("transaction");
}
?>


               
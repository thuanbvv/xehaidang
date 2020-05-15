<?php
session_start();
require_once __DIR__ . "/../libraries/database.php";
require_once __DIR__ . "/../libraries/Function.php";
require_once __DIR__ . "/Url.php";

$db = new Database;

define('ROOT', $_SERVER['DOCUMENT_ROOT'] . "/xehaidang/public/uploads/");

$category = $db->fetchAll('category');

/*LẤY DS SẢN PHẨM MỚI NHẤT*/
$sqlnew = "SELECT * FROM product WHERE 1 ORDER BY id DESC ";
$productNew = $db->fetchsql($sqlnew);
/*LẤY DS SẢN PHẨM KHUYẾN MÃI*/
$sqlnewKM = "SELECT * FROM product WHERE sale>0 ORDER BY id DESC";
$productNewKM = $db->fetchsql($sqlnewKM);
// danh sách menu
$MENULIST = $db->fetchAll('menu');
// lấy danh sách sản phẩm xe 7 chổ
$sqlsp7 = "SELECT product.*,category_chil.fixcate from product LEFT JOIN category_chil on category_chil.id=product.category_id_chil WHERE category_chil.fixcate = 1 and category_chil.category_id != 3 ORDER BY product.id DESC";
$listproduct7 = $db->fetchsql($sqlsp7);

// lấy danh sách sản phẩm xe 4 chổ
$sqlsp4 = "SELECT product.*,category_chil.fixcate from product LEFT JOIN category_chil on category_chil.id=product.category_id_chil WHERE category_chil.fixcate = 0 and category_chil.category_id != 3 ORDER BY product.id DESC";
$listproduct4 = $db->fetchsql($sqlsp4);

// lấy danh sách sản phẩm xe có tài
$sqlsp_cotai = "SELECT product.*,category_chil.fixcate from product LEFT JOIN category_chil on category_chil.id=product.category_id_chil WHERE category_chil.category_id = 3 ORDER BY product.id DESC";
$listproduct_cotai = $db->fetchsql($sqlsp_cotai);

//list tin tức
$sql_tintuc = "SELECT * FROM `posts` order by created_at desc";
$list_tintuc = $db->fetchsql($sql_tintuc);

//xử lý category con
$categorychill = $db->fetchAll('category_chil');
function showMenuLi($categorychill, $id_parent = 0)
{
    # BƯỚC 1: LỌC DANH SÁCH MENU VÀ CHỌN RA NHỮNG MENU CÓ ID_PARENT = $id_parent

    // Biến lưu menu lặp ở bước đệ quy này
    $menu_tmp = array();

    foreach ($categorychill as $key => $item) {
        // Nếu có parent_id bằng với parrent id hiện tại
        if ((int)$item['category_id'] == (int)$id_parent) {
            $menu_tmp[] = $item;
            // Sau khi thêm vào biên lưu trữ menu ở bước lặp
            // thì unset nó ra khỏi danh sách menu ở các bước tiếp theo
            unset($categorychill[$key]);
        }
    }

    # BƯỚC 2: lẶP MENU THEO DANH SÁCH MENU Ở BƯỚC 1

    // Điều kiện dừng của đệ quy là cho tới khi menu không còn nữa
    if ($menu_tmp) {
        echo '<ul class="level1">';
        foreach ($menu_tmp as $item) {
            echo '<li class="level1">';
            echo '<a class="" href="san-pham.php?danh-muc=' . $item["id"] . '">';
            echo '<span>' . $item['name'] . ' </span></a>';

            // Gọi lại đệ quy
            // Truyền vào danh sách menu chưa lặp và id parent của menu hiện tại
//                showMenuLi($categorychill, $item['category_id']);
            echo '</li>';
        }
        echo '</ul class="level1">';
    }
}

?>

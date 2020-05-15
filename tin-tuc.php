<?php
require_once __DIR__ . "/autoload/autoload.php";
?>
<?php require_once __DIR__ . "/layouts/header.php"; ?>

<div class="col-md-12">
    <!--Blog-->
    <section id="blog_index" class="container m-b-20">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="section-heading">
                    <h2 title="Tin tức nổi bật">
                        <span>Tin tức nổi bật</span>
                    </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="" class="blog_item">
                <?php foreach ($list_tintuc as $item) : ?>
                    <div style="border-bottom: 0px;" class="card mb-4 shadow-sm">
                        <div class="bd-placeholder-img card-img-top">
                            <img src="public/uploads/tin-tuc/<?php echo $item['thunbar'] ?>" alt=""
                                 title="" style="height: 165px;">
                        </div>
                        <div class="card-body">
                            <div class="title">
                                <h4><?php echo $item["p_title"] ?>
                                </h4>
                            </div>
                            <div class="blog_item_content">
                                <div class="card-text">
                                    <i class="fa content" aria-hidden="true"><?php echo $item['p_descriptions'] ?> </i>
                                    *****
                                </div>
                                <div class="article_created">
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                    <time datetime="<?php echo $item['updated_at'] ?>"><?php echo $item['updated_at'] ?></time>
                                </div>
                            </div>

                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
    <!--EndBlog-->
</div>

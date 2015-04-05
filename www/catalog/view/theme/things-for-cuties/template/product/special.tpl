<?php
$this->language->load('module/tfc');
$sale = $this->language->get('text_sale');
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><span class="h1-top"><?php echo $heading_title; ?></span></h1>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"><label><?php echo $text_display; ?></label> <p><span id="list" class="list_on"></span> <span id="grid" onclick="display('grid');"></span></p></div>
    
    <div class="sort"><label><?php echo $text_sort; ?></label>
      <select onchange="location = this.value;" class="selectBox">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    
    <div class="limit"><label><?php echo $text_limit; ?></label>
      <select onchange="location = this.value;" class="selectBox">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>    
    
  </div>
  <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  <div class="product-list">
      
  <?php 
  $prod = count($products);
  $count = 1;
  foreach ($products as $product) {
  $extra = "";
  if ($prod == $count) $extra = " last-item";
  if ($count == 5 || $count == 9 || $count == 13 || $count == 17 || $count == 21 || $count == 25 || $count == 29 || $count == 34 || $count == 38 || $count == 42) $extra .= " row-first"; 
  $count++;
   ?>
    <div class="box-product<?php echo $extra; ?>">
    <?php if ($product['special']) { ?>
    <span class="new"><?php echo $sale; ?></span>
    <?php } ?>
    <?php if ($product['thumb']) { ?>
    <a class="image" href="<?php echo $product['href']; ?>" title="View more"> <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
    <?php if ($product['special']) { ?>
    <span class="new2"><?php echo $sale; ?></span>
    <?php } ?>
    </a>
    <?php } ?>
    <div class="list_grid_right">
      <h3 class="name"><a href="<?php echo $product['href']; ?>" title=""><?php echo $product['name']; ?></a></h3>
      <?php if ($product['price']) { ?>
      <p class="wrap_price">
      <?php if (!$product['special']) { ?>
      <span class="price"><?php echo $product['price']; ?></span>
      <?php } else { ?>
      <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
      <?php } ?>
      <?php if ($product['tax']) { ?>
      <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <span class="rating"><img src="catalog/view/theme/things-for-cuties/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></span>
      <?php } ?>
      </p>
      <p class="description"><?php echo $product['description']; ?></p>
      <?php } ?>
      <p class="submit"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></p>
      <p class="links_add"> <a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a> <a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a> </p>
      </div>
    </div>
    <?php } ?>
    
    
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		$('.display').html('<label><?php echo $text_display; ?></label><p><span id="list" class="list_on"></span> <span id="grid" onclick="display(\'grid\');"></span></p>');
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');					
		$('.display').html('<label><?php echo $text_display; ?></label><p><span id="list" onclick="display(\'list\');"></span><span id="grid" class="grid_on"></span></p>');
		$.totalStorage('display', 'grid');
		set_grid();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
$(function () { 
    $("SELECT").selectBox(); 
});
//--></script> 
<?php echo $footer; ?>
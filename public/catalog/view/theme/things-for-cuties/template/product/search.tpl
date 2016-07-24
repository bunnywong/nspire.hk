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
  <div class="information_content">
  <b><?php echo $text_critea; ?></b>
  <div class="content">
    <p><?php echo $entry_search; ?>
      <?php if ($search) { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
      <?php } ?>
      <select name="category_id" class="selectBox">
        <option value="0"><?php echo $text_category; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_1['children'] as $category_2) { ?>
        <?php if ($category_2['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_2['children'] as $category_3) { ?>
        <?php if ($category_3['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </select>
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
      <label for="sub_category"><?php echo $text_sub_category; ?></label>
    </p>
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <?php } ?>
    <label for="description"><?php echo $entry_description; ?></label>
  </div>
  <div class="buttons">
    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
  </div>
  <h2><?php echo $text_search; ?></h2>
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
  <?php echo $content_bottom; ?></div></div>
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

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
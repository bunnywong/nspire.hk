<?php
$this->language->load('module/tfc');
$sale = $this->language->get('text_sale');
?>
<div class="box">
 <div>
  <h1 class="title_module"><span><?php echo $heading_title; ?></span></h1>
  <div class="box-content">
  <?php 
  $prod = count($products);
  $count = 1;
  foreach ($products as $product) {
  $extra = "";
  if ($prod == $count) $extra = " last-item";
 if ($count == 5) { 
 	$extra .= " row-first";
 	$count = 1;
 }
  $count++;
   ?>
    <div class="box-product<?php echo $extra; ?>">
    <?php if ($product['thumb']) { ?>
    <a class="image" href="<?php echo $product['href']; ?>" title="View more"> <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
    <?php if ($product['special']) { ?>
    <span class="new"><?php echo $sale; ?></span>
    <?php } ?>
    </a>
    <?php } ?>
      <h3 class="name"><a href="<?php echo $product['href']; ?>" title=""><?php echo $product['name']; ?></a></h3>
      <?php if ($product['price']) { ?>
      <p class="wrap_price">
      <?php if (!$product['special']) { ?>
      <span class="price"><?php echo $product['price']; ?></span>
      <?php } else { ?>
      <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
      <?php } ?>
      </p>
      <?php } ?>
      <p class="submit"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></p>
    </div>
    
    <?php } ?>
  </div>
</div>
</div>
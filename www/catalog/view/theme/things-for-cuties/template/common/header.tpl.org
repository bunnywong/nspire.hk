<?php

$custommenu_main_title = $this->config->get ('custommenu_main_title');
$custommenu_sub1_title = $this->config->get ('custommenu_sub1_title');
$custommenu_sub2_title = $this->config->get ('custommenu_sub2_title');
$custommenu_sub3_title = $this->config->get ('custommenu_sub3_title');
$custommenu_sub4_title = $this->config->get ('custommenu_sub4_title');
$custommenu_sub5_title = $this->config->get ('custommenu_sub5_title');
$custommenu_sub6_title = $this->config->get ('custommenu_sub6_title');
$custommenu_sub7_title = $this->config->get ('custommenu_sub7_title');
$custommenu_sub8_title = $this->config->get ('custommenu_sub8_title');
$custommenu_sub9_title = $this->config->get ('custommenu_sub9_title');
$custommenu_sub10_title = $this->config->get ('custommenu_sub10_title');
$custommenu_main_url = $this->config->get ('custommenu_main_url');
$custommenu_sub1_url = $this->config->get ('custommenu_sub1_url');
$custommenu_sub2_url = $this->config->get ('custommenu_sub2_url');
$custommenu_sub3_url = $this->config->get ('custommenu_sub3_url');
$custommenu_sub4_url = $this->config->get ('custommenu_sub4_url');
$custommenu_sub5_url = $this->config->get ('custommenu_sub5_url');
$custommenu_sub6_url = $this->config->get ('custommenu_sub6_url');
$custommenu_sub7_url = $this->config->get ('custommenu_sub7_url');
$custommenu_sub8_url = $this->config->get ('custommenu_sub8_url');
$custommenu_sub9_url = $this->config->get ('custommenu_sub9_url');
$custommenu_sub10_url = $this->config->get ('custommenu_sub10_url');
$custommenu_status = $this->config->get ('custommenu_status');
$custommenu_position = $this->config->get ('custommenu_position');

?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>

<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />

<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/things-for-cuties/stylesheet/carousel.css" media="screen">
<link rel="stylesheet" type="text/css" href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700' />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Gochi+Hand" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/things-for-cuties/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/things-for-cuties/stylesheet/mobile.css"/>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/things-for-cuties/stylesheet/cloud-zoom.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/things-for-cuties/stylesheet/bun.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<?php foreach ($scripts as $script) { 
if ($script != 'catalog/view/javascript/jquery/jquery.cycle.js' && $script != 'catalog/view/javascript/jquery/jquery.jcarousel.min.js'){
?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php  }
} ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/things-for-cuties/js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="catalog/view/theme/things-for-cuties/js/jquery.selectBox.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/things-for-cuties/js/cloud-zoom.1.0.2.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/things-for-cuties/js/cuties.js"></script>

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <div id="header_right">
  <?php echo $language; ?>
  <?php echo $currency; ?>  
  <div id="search">
    <div class="button-search"></div>
   <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <?php echo $cart; ?>
  <div id="bottom_right">
  <p id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </p>
  <div class="links"><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
  </div>
  </div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
  
  <?php if ($custommenu_status == "1" && $custommenu_position == 1) { ?>
    
    	<?php if ($custommenu_main_url) { ?>
    		<li class="menu_item"><a class="extra" href="<?php echo $custommenu_main_url; ?>"><?php echo $custommenu_main_title; ?></a>
    		<?php if ($custommenu_sub1_url && $custommenu_sub1_title) { ?>
    			<div class="sub_menu">
      				<div class="bubble"></div>
    				<div class="sub_menu_block">
    				<ul>
    					<li><a class="extra" href="<?php echo $custommenu_sub1_url; ?>"><?php echo $custommenu_sub1_title; ?></a></li>
                        <?php if ($custommenu_sub2_url && $custommenu_sub2_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub2_url; ?>"><?php echo $custommenu_sub2_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub3_url && $custommenu_sub3_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub3_url; ?>"><?php echo $custommenu_sub3_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub4_url && $custommenu_sub4_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub4_url; ?>"><?php echo $custommenu_sub4_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub5_url && $custommenu_sub5_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub5_url; ?>"><?php echo $custommenu_sub5_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub6_url && $custommenu_sub6_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub6_url; ?>"><?php echo $custommenu_sub6_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub7_url && $custommenu_sub7_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub7_url; ?>"><?php echo $custommenu_sub7_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub8_url && $custommenu_sub8_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub8_url; ?>"><?php echo $custommenu_sub8_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub9_url && $custommenu_sub9_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub9_url; ?>"><?php echo $custommenu_sub9_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub10_url && $custommenu_sub10_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub10_url; ?>"><?php echo $custommenu_sub10_title; ?></a></li>
                        <?php } ?>
    				</ul>
    				</div>
    			</div>
    		<?php } ?>
    		</li>
    	<?php } ?>
        
    <?php } ?>
  
  <?php 
  $count = 1;
  ?>
    <?php foreach ($categories as $category) { 
    
    if ($count == count($categories) && $custommenu_position == "0" && $custommenu_status == "0"){
    $ext = 'class="last_item menu_item down"';
    } else {
    $ext = 'class="menu_item down"';
    }
    $count++;
    ?>
    <li <?php echo $ext; ?>><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div class="sub_menu">
      <div class="bubble"></div>
      <?php $wid = 163 * $category['column']."px";
      $wid2 = 163 - $wid;
       ?>
      <div class="sub_menu_block" style="width:<?php echo $wid; ?>; left:<?php echo $wid2; ?>px;">
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']);?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
        </div>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
    
    
    
    <?php if ($custommenu_status == "1" && $custommenu_position == 0) { ?>
    
    	<?php if ($custommenu_main_url) { ?>
    		<li class="menu_item last_item"><a class="extra" href="<?php echo $custommenu_main_url; ?>"><?php echo $custommenu_main_title; ?></a>
    		<?php if ($custommenu_sub1_url && $custommenu_sub1_title) { ?>
    			<div class="sub_menu">
      				<div class="bubble"></div>
    				<div class="sub_menu_block">
    				<ul>
    					<li><a class="extra" href="<?php echo $custommenu_sub1_url; ?>"><?php echo $custommenu_sub1_title; ?></a></li>
                        <?php if ($custommenu_sub2_url && $custommenu_sub2_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub2_url; ?>"><?php echo $custommenu_sub2_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub3_url && $custommenu_sub3_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub3_url; ?>"><?php echo $custommenu_sub3_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub4_url && $custommenu_sub4_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub4_url; ?>"><?php echo $custommenu_sub4_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub5_url && $custommenu_sub5_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub5_url; ?>"><?php echo $custommenu_sub5_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub6_url && $custommenu_sub6_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub6_url; ?>"><?php echo $custommenu_sub6_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub7_url && $custommenu_sub7_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub7_url; ?>"><?php echo $custommenu_sub7_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub8_url && $custommenu_sub8_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub8_url; ?>"><?php echo $custommenu_sub8_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub9_url && $custommenu_sub9_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub9_url; ?>"><?php echo $custommenu_sub9_title; ?></a></li>
                        <?php } ?>
                        <?php if ($custommenu_sub10_url && $custommenu_sub10_title) { ?>
                        <li><a class="extra" href="<?php echo $custommenu_sub10_url; ?>"><?php echo $custommenu_sub10_title; ?></a></li>
                        <?php } ?>
    				</ul>
    				</div>
    			</div>
    		<?php } ?>
    		</li>
    	<?php } ?>
        
    <?php } ?>
    
    
  </ul>
</div>
<!-- begin menu-mobile //-->
 <div id="mobile-menu">
  <div id="mobile-menu-nav">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    <?php } ?>
    <?php if ($custommenu_main_url && $custommenu_status) { ?>
    <li class="menu_item last_item"><a class="extra" href="<?php echo $custommenu_main_url; ?>"><?php echo $custommenu_main_title; ?></a>
    <?php } ?>
    <?php if ($custommenu_sub1_url && $custommenu_sub1_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub1_url; ?>"><?php echo $custommenu_sub1_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub2_url && $custommenu_sub2_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub2_url; ?>"><?php echo $custommenu_sub2_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub3_url && $custommenu_sub3_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub3_url; ?>"><?php echo $custommenu_sub3_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub4_url && $custommenu_sub4_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub4_url; ?>"><?php echo $custommenu_sub4_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub5_url && $custommenu_sub5_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub5_url; ?>"><?php echo $custommenu_sub5_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub6_url && $custommenu_sub6_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub6_url; ?>"><?php echo $custommenu_sub6_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub7_url && $custommenu_sub7_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub7_url; ?>"><?php echo $custommenu_sub7_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub8_url && $custommenu_sub8_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub8_url; ?>"><?php echo $custommenu_sub8_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub9_url && $custommenu_sub9_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub9_url; ?>"><?php echo $custommenu_sub9_title; ?></a></li>
    <?php } ?>
    <?php if ($custommenu_sub10_url && $custommenu_sub10_title) { ?>
    <li><a class="extra" href="<?php echo $custommenu_sub10_url; ?>"><?php echo $custommenu_sub10_title; ?></a></li>
    <?php } ?>
  </ul>
  </div>
 </div>
<!-- end menu-mobile //-->
<?php } ?>
<div id="notification"></div>

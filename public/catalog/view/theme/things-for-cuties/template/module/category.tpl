<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <ul class="box-category">
    
    <?php 
  	$cat = count($categories);
  	$count = 1;
  	foreach ($categories as $category) {
  	$extra = "";
  	if ($cat == $count) $extra = " class='last-item'";
  	$count++;
   	?>
      <li<?php echo $extra; ?>>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <ul>
          <?php 
          	$cat2 = count($category['children']);
  			$count2 = 1;
          	foreach ($category['children'] as $child) { 
            $extra2 = "";
  			if ($cat2 == $count2) $extra2 = " class='last-item'";
  			$count2++;
            ?>
          <li<?php echo $extra2; ?>>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
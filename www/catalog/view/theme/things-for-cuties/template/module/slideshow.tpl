<div id="slide-wrapper" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
	<ul id="slider<?php echo $module; ?>">
    	<?php foreach ($banners as $banner) { ?>
        	<?php if ($banner['link']) { ?>
            	<li><a href="<?php echo $banner['link']; ?>">
                <div class="border_on_img"></div>
                <div class="content_slider">
                <p><?php echo $banner['title']; ?></p>
                </div>
    			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;" />
                </a>
                </li>
    		<?php } else { ?>
    			<li>
                <div class="border_on_img"></div>
                <div class="content_slider">
                <p><?php echo $banner['title']; ?></p>
                </div>
    			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;" />
                </li>
    		<?php } ?>
    	<?php } ?>
     </ul>
</div>
<script type="text/javascript"><!--
$(function() {
	$('#slider<?php echo $module; ?>').before('<div id="sliderthumbs" class="sliderthumbs">').cycle({
	pager:  '#sliderthumbs'  
	});
});
--></script>
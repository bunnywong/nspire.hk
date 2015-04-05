<?php  if (count($languages) > 1) { ?>

<?php
$count = 1;
?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language">
  <ul class="currence"> 
    <?php foreach ($languages as $language) { 
    $ext = "";
    if ($count == 1) $ext='class="first_item"';
    if ($count == count($languages)) $ext='class="last_item"';
    $count ++;
    ?>
    <?php
    if ($language['code'] == $language_code) { 
    ?>
    
    <li <?php echo $ext; ?>><a class="selected" title="<?php echo $language['name']; ?>"><?php echo $language['code']; ?></a></li>
    
    <?php } else { ?>
    
     <li <?php echo $ext; ?>><a title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().parent().submit();"><?php echo $language['code']; ?></a></li>
    
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
  </div>
</form>

<?php } else { ?>
<div id="language" style="height:30px;"></div>
<?php } ?>
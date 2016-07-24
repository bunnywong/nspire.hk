<?php if (count($currencies) > 1) { 
$count = 1;
?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency">
  <ul class="currence">  
    <?php foreach ($currencies as $currency) { 
    $ext = "";
    if ($count == 1) $ext='class="first_item"';
    if ($count == count($currencies)) $ext='class="last_item"';
    $count ++;    
    ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    
    <li <?php echo $ext; ?>><a class="selected" title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_left']; ?></a></li>
    
    <?php } else { ?>
    
    <li <?php echo $ext; ?>><a class="selected" title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_right']; ?></a></li>
    
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li <?php echo $ext; ?>><a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a></li>
    <?php } else { ?>
    <li <?php echo $ext; ?>><a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a></li>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
  </div>
</form>
<?php } else { ?>
<div id="currency" style="height:30px;"></div>
<?php } ?>
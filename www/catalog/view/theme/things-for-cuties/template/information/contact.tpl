<?php

$twitter = $this->config->get ('contact_sociallink_twitter');
$facebook = $this->config->get ('contact_sociallink_facebook');
$youtube = $this->config->get ('contact_sociallink_youtube');
$vimeo = $this->config->get ('contact_sociallink_vimeo');

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
  <p>
  <?php echo($this->config->get ( 'contact_textblockI' )); ?>
  </p>
  </div>
  <div class="information_content">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_location; ?></h2>
    <div class="map">
    <?php echo (html_entity_decode(($this->config->get ( 'contact_mapcode' )))); ?>
    </div>
    <div class="contact-info">
    <ul>
    <li class="item_1"><?php echo $address; ?></li>
    <?php if ($telephone) { ?>
    <li class="item_2"><?php echo $telephone; ?></li>
    <?php } ?>
    <?php if ($fax) { ?>
    <li class="item_3"><?php echo $fax; ?></li>
    <?php } ?>
    </ul>
    </div>
     <div class="social-info">
     <span>
     <?php echo($this->config->get ( 'contact_socialheader' )); ?>
     </span>
     <ul>
     
	 <?php if (!empty($twitter)) {	?>
     <li><a class="twitter" href="https://www.twitter.com/<?php echo $this->config->get ( 'contact_sociallink_twitter' ) ?>" title="Twitter">&nbsp;</a></li>
     <?php } ?>
     <?php if (!empty($facebook)) {	?>
     <li><a class="facebook" href="https://www.facebook.com/<?php echo $this->config->get ( 'contact_sociallink_facebook' ) ?>" title="Facebook">&nbsp;</a></li>
     <?php } ?>
     <?php if (!empty($youtube)) {	?>
     <li><a class="youtube" href="http://www.youtube.com/user/<?php echo $this->config->get ( 'contact_sociallink_youtube' ) ?>" title="Youtube">&nbsp;</a></li>
     <?php } ?>
     <?php if (!empty($vimeo)) {	?>
     <li><a class="vimeo" href="http://www.vimeo.com/channels/<?php echo $this->config->get ( 'contact_sociallink_vimeo' ) ?>" title="Vimeo">&nbsp;</a></li>
     <?php } ?>

     </ul>
     </div>
    <h2><?php echo $text_contact; ?></h2>
     <div class="content">
  <p>
<?php echo($this->config->get ( 'contact_textblockII' )); ?>
  </p>
  <div class="one-two">
    <span class="small"><?php echo $entry_name; ?></span><br />
    <input type="text" name="name" value="<?php echo $name; ?>" style="width:250px"/>
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
   </div>
   <div class="two-two">
    <span class="small"><?php echo $entry_email; ?></span><br />
    <input type="text" name="email" value="<?php echo $email; ?>" style="width:250px"/>
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
   </div>
   <div>
    <span class="small"><?php echo $entry_enquiry; ?></span><br />
    <textarea name="enquiry" cols="40" rows="10" style="width: 98%;"><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <span class="small"><?php echo $entry_captcha; ?></span><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
    </div>
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
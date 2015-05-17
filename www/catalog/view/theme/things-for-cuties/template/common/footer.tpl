</div>
<div id="footer">

<?php
if($this->config->get('customFooter_status') == 1) echo $tfc;
?>

<div class="footer_wrapper">
    <div id="footer_bottom">

    <?php if ($informations) { ?>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_1 down" ><a><?php echo $text_information; ?></a></h3>
        <ul class="menu_footer_item text_item">
        <?php foreach ($informations as $information) { ?>
      		<li><a href="<?php echo $information['href']; ?>" title="<?php echo $information['title']; ?>"><?php echo $information['title']; ?></a></li>
      	<?php } ?>
        </ul>
      </div>
      <?php } ?>

      <div class="footer_bottom_item">
        <h3 class="bottom_item_2 down"><a><?php echo $text_service; ?></a></h3>
        <ul class="menu_footer_item text_item">
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      		<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_3 down" ><a><?php echo $text_extra; ?></a></h3>
        <ul class="menu_footer_item text_item">
          	<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      		<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      		<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      		<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_4 down"><a><?php echo $text_account; ?></a></h3>
        <ul class="menu_footer_item text_item">
          	<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      		<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      		<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      		<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>

    <div id="mobile-footer">
 <div class="mobile-footer-menu">
 <h3><?php echo $text_information; ?></h3>
    <div class="mobile-footer-nav">
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      </ul>
    </div>
    <h3><?php echo $text_service; ?></h3>
    <div class="mobile-footer-nav">
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
    </div>
  <h3><?php echo $text_extra; ?></h3>
    <div class="mobile-footer-nav">
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
     </ul>
    </div>
  <h3><?php echo $text_account; ?></h3>
    <div class="mobile-footer-nav">
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
    </div>
 </div>
</div>

  </div>

<div id="footer-text">

    <!-- <p><?php echo str_replace("<br />", "", $powered); ?></p>	--!>
	<div id="paypal_logo" style="margin-right:100px; float:right;">
		<!-- PayPal Logo --><table border="0" cellpadding="10" cellspacing="0" align="center"><tr><td align="center"></td></tr><tr><td align="center"><a href="#" onclick="javascript:window.open('https://www.paypal.com/hk/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=350');"><img  src="http://nspire.hk/catalog/view/theme/things-for-cuties/image/paypal_logo.png" border="0" alt=""></a></td></tr></table><!-- PayPal Logo -->
  </div>

  <div style="float:right; margin:30px 10px 0px 0px; ">
		<a href="https://www.facebook.com/messages/1412555195667673" target="_blank">
			<img src="http://nspire.hk/catalog/view/theme/things-for-cuties/image/logo_facebook.jpg">
		</a>
	</div>


  </div>
</div>
<div id="scrolltotop"></div>


<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

</body></html>
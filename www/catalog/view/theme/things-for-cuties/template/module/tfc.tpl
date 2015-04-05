<div id="footer_top">
    <div class="footer_wrapper">
      <div id="footer_top_content">
      	<div id="footer_top_item">
        
        <?php if ($about_status == '1') { ?>
        <div class="footer_top_item" id="about_us">
            <h3 class="title_item_1 down" ><a><?php echo $about_header; ?></a></h3>
            <?php if($this->config->get('about_us_image_status') == '1') echo '<img class="about_us_image" alt="small logo" src="'. HTTPS_SERVER .'image/'. $this->config->get('about_us_image') .'"/>'; ?>
            <p class="text_item content_item_1 about"><?php echo html_entity_decode($about_text); ?></p>
        </div>
        <?php } ?>
        
        <?php if ($contact_status == '1') { ?>
        <div class="footer_top_item" id="contact_us">
            <h3 class="title_item_2 down" ><a><?php echo $contact_header; ?></a></h3>
            <div class="text_item">
            <?php if (! empty ( $contact_address )) {	?>
            	<p class="info_contact"> <span><?php echo html_entity_decode(nl2br($contact_address)); ?></span> </p>
			<?php	} ?>
              
              <p class="online_contact"> 
              
              <?php if (! empty ( $telephone1 )) {	?>
              <span class="phone"><?php echo $telephone1; ?></span>
              <?php } ?>
              <?php if (! empty ( $telephone2 )) {	?>
               <span class="phone"><?php echo $telephone2; ?></span>
              <?php } ?>
              <?php if (! empty ( $fax )) {	?>
              <span class="fax"><?php echo $fax; ?></span>
              <?php } ?>
              <?php if (! empty ( $email1 )) {	?>
              <span class="mail"><a class="color" href="Mailto:<?php echo $email1; ?>" title="Mail"><?php echo $email1; ?></a></span>
              <?php } ?>
              <?php if (! empty ( $email2 )) {	?>
              <span class="mail"><a class="color" href="Mailto:<?php echo $email2; ?>" title="Mail"><?php echo $email2; ?></a></span>
              <?php } ?>
              
              </p>
            </div>
        </div>
        <?php } ?> 
        
        <?php if($twitter_column_status == '1') { ?>
        
        <div class="footer_top_item " id="twitter_news">
            <h3 class="title_item_3 down" ><a href="http://twitter.com/<?php echo $twitter_username; ?>"><?php echo $twitter_column_header ; ?></a></h3>
            <div class="text_item content_item_3">
              <div id="twitter_update_list">
                
<a class="twitter-timeline"  width="232" height="250" data-chrome="nofooter noheader transparent noscrollbar" data-tweet-limit="2" href="https://twitter.com/<?php echo $twitter_username; ?>"  data-widget-id="<?php echo $twitter_id; ?>"></a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                
              </div>
            </div>
          </div>
          <?php } ?>
          
          <?php if ($facebook_status == '1') { ?>
          <div class="footer_top_item last_footer_item" id="facebook">
            <h3 class="title_item_4 down"><a>Facebook</a></h3>
            <div id="fb-root"></div>
			  <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/de_DE/all.js#xfbml=1&appId=371189259657718";
                fjs.parentNode.insertBefore(js, fjs);
              }(document, 'script', 'facebook-jssdk'));</script>            
            <div class="fb-like-box" data-href="https://www.facebook.com/<?php echo $facebook_id; ?>" data-width="220" data-height="250" data-show-faces="true" data-stream="false" data-show-border="false" data-header="false"></div>
          </div>
		<?php } ?>
 
<div class="clear"></div>     
</div>
</div>
</div>
</div>
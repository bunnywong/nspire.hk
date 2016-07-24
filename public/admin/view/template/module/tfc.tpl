<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      
      <div style="height: 38px; padding-left: 7px; padding-right: 7px; border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;">
     <h3><?php echo $text_customfooter25; ?></h3>
     </div>
     <div style="height: 38px; padding: 7px; border-left: 1px solid #DBDBDB; border-right: 1px solid #DBDBDB; margin-bottom:10px;"> 
     <p>
      <?php echo $text_customfooter1; ?>
      <select name="customFooter_status">
      <?php if ($customFooter_status) { ?>
      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
      <option value="0"><?php echo $text_disabled; ?></option>
      <?php } else { ?>
      <option value="1"><?php echo $text_enabled; ?></option>
      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
      <?php } ?>
      </select>
      </p>
      </div>
      
      <div id="tabs" class="htabs"><a href="#tab_about"><?php echo $text_customfooter2; ?></a> <a href="#tab_contact"><?php echo $text_customfooter3; ?></a><a href="#tab_twitter"><?php echo $text_customfooter4; ?></a><a href="#tab_facebook"><?php echo $text_customfooter5; ?></a></div>
      <div id="tab_about">
        <table class="form">
          <tr>
            <td><?php echo $text_customfooter6; ?> </td>
            <td>
            <select name="about_status">
            <?php if ($about_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
            </select>
              </td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter7; ?> </td>
            <td><input type="text" name="about_header" value="<?php echo $about_header;?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter8; ?> </td>
            <td><textarea name="about_text" rows="10" cols="50"> <?php echo $about_text; ?></textarea></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter9; ?> </br>
              <?php 
           if(isset($about_us_image_status) && $about_us_image_status == '1'){
           	 ?>
              <input type="radio"  name="about_us_image_status" value="1" CHECKED/>
              Yes<br />
              <input type="radio" name="about_us_image_status" value="0">
              No
              <?php 
           }     else {   ?>
              <input type="radio"  name="about_us_image_status" value="1" />
              Yes<br />
              <input type="radio" name="about_us_image_status" value="0" CHECKED>
              No
              <?php   } ?></td>
            <td><input type="hidden" name="about_us_image" value="<?php echo $about_us_image; ?>" id="about_us_image" />
              <img src="<?php echo $about_us_image_preview; ?>" alt="" id="about_us_image_preview" class="image" onclick="image_upload('about_us_image', 'about_us_image_preview');" /></td>
            </td>
          </tr>
        </table>
      </div>
      <div id="tab_contact">
        <table class="form">
          <tr>
            <td><?php echo $text_customfooter10; ?> </td>
            <td>
            <select name="contact_status">
            <?php if ($contact_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
            </select>
            </td>
          </tr>
          <tr><td><?php echo $text_customfooter11; ?><td></tr>
          <tr>
            <td><?php echo $text_customfooter12; ?> </td>
            <td><textarea name="contact_address" rows="10" cols="50"> <?php echo $contact_address; ?></textarea></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter13; ?> </td>
            <td><input type="text" name="contact_header" value="<?php echo $contact_header; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter14; ?> </td>
            <td><input type="text" name="telephone1" value="<?php echo $telephone1; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter15; ?> </td>
            <td><input type="text" name="telephone2" value="<?php echo $telephone2; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter16; ?> </td>
            <td><input type="text" name="fax" value="<?php echo $fax; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter17; ?> </td>
            <td><input type="text" name="email1" value="<?php echo $email1; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter18; ?> </td>
            <td><input type="text" name="email2" value="<?php echo $email2; ?>" style="width:200px;"></td>
          </tr>
        </table>
      </div>
      <div id="tab_twitter">
        <table class="form">
          <tr>
            <td><?php echo $text_customfooter19; ?> </td>
            <td><select name="twitter_column_status">
            <?php if ($twitter_column_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
            </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter20; ?> </td>
            <td><input type="text" name="twitter_column_header" value="<?php echo $twitter_column_header; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><label style="width: 110px"><?php echo $text_customfooter21; ?> </label></td>
            <td><input type="text" name="twitter_id" value="<?php echo $twitter_id; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><label style="width: 110px"><?php echo $text_customfooter22; ?> </label></td>
            <td><input type="text" name="twitter_username" value="<?php echo $twitter_username; ?>" style="width:200px;"></td>
          </tr>
          </tr>
          
        </table>
      </div>
      <div id="tab_facebook">
        <table class="form">
          <tr>
            <td><?php echo $text_customfooter23; ?> </td>
            <td><select name="facebook_status">
            <?php if ($facebook_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter24; ?> </td>
            <td><input type="text" name="facebook_id" value="<?php echo $facebook_id; ?>" style="width:200px;"></td>
          </tr>
        </table>
      </div>      
      
      
      <div style="height: 38px; padding-left: 7px; padding-right: 7px; border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;">
     <h3><?php echo $text_contact1; ?></h3>
     </div>
     
     <div style="height: 20px;"> 
     </div>
     
     <div id="tabs2" class="htabs"><a href="#tab_cont1"><?php echo $text_contact2; ?></a> <a href="#tab_cont2"><?php echo $text_contact3; ?></a><a href="#tab_cont3"><?php echo $text_contact4; ?></a><a href="#tab_cont4"><?php echo $text_contact5; ?></a></div>
      
      <div id="tab_cont1">
     <table class="form">
          <tr>
            <td><?php echo $text_contact2; ?> </td>
            <td><textarea name="contact_textblockI" rows="10" cols="100"> <?php echo $contact_textblockI; ?></textarea></td>
          </tr>
        </table>
      </div>
      <div id="tab_cont2">
      <table class="form">
          <tr>
            <td><?php echo $text_contact3; ?> </td>
            <td><textarea name="contact_textblockII" rows="10" cols="100"> <?php echo $contact_textblockII; ?></textarea></td>
          </tr>
        </table>
      </div>
      <div id="tab_cont3">
     <table class="form">
          <tr>
            <td><?php echo $text_contact9; ?> </td>
            <td><textarea name="contact_mapcode" rows="10" cols="100"> <?php echo $contact_mapcode; ?></textarea></td>
          </tr>
        </table>
      </div>
      <div id="tab_cont4">
      <table class="form">
      <tr><td><?php echo $text_customfooter11; ?><td></tr>
          <tr>
            <td><?php echo $text_contact6; ?> </td>
            <td><input type="text" name="contact_socialheader" value="<?php echo $contact_socialheader; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter24; ?> </td>
            <td><input type="text" name="contact_sociallink_facebook" value="<?php echo $contact_sociallink_facebook; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_customfooter22; ?> </td>
            <td><input type="text" name="contact_sociallink_twitter" value="<?php echo $contact_sociallink_twitter; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_contact7; ?> </td>
            <td><input type="text" name="contact_sociallink_youtube" value="<?php echo $contact_sociallink_youtube; ?>" style="width:200px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_contact8; ?> </td>
            <td><input type="text" name="contact_sociallink_vimeo" value="<?php echo $contact_sociallink_vimeo; ?>" style="width:200px;"></td>
          </tr>
        </table>
      </div>
      
      
      <div style="height: 38px; padding-left: 7px; padding-right: 7px; border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;">
     <h3><?php echo $text_custommenu15; ?></h3>
     </div>
     
     <div style="height: 38px; padding: 7px; border-left: 1px solid #DBDBDB; border-right: 1px solid #DBDBDB; margin-bottom:10px;"> 
      <?php echo $text_custommenu1; ?>
      <select name="custommenu_status">
      <?php if ($custommenu_status) { ?>
      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
      <option value="0"><?php echo $text_disabled; ?></option>
      <?php } else { ?>
      <option value="1"><?php echo $text_enabled; ?></option>
      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
      <?php } ?>
      </select>
      <br />
      <?php echo $text_custommenu16; ?>
      <select name="custommenu_position">
      <?php if ($custommenu_position) { ?>
      <option value="1" selected="selected"><?php echo $text_custommenu17; ?></option>
      <option value="0"><?php echo $text_custommenu18; ?></option>
      <?php } else { ?>
      <option value="1"><?php echo $text_custommenu17; ?></option>
      <option value="0" selected="selected"><?php echo $text_custommenu18; ?></option>
      <?php } ?>
      </select>
     </div>
     
     <div>
     <table class="form">
      <tr>
      <td><?php echo $text_customfooter11; ?><td>
      <td></td>
      </tr>
      <tr>
      <td style="border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;"></td>
      <td style="border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;"><?php echo $text_custommenu2; ?></td>
      <td style="border: 1px solid #DBDBDB; background: url('view/image/box.png') repeat-x;"><?php echo $text_custommenu3; ?></td>
      </tr>
          <tr>
            <td><?php echo $text_custommenu4; ?> </td>
            <td><input type="text" name="custommenu_main_title" value="<?php echo $custommenu_main_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_main_url" value="<?php echo $custommenu_main_url; ?>" style="width:350px;"></td>
          </tr>
           <tr>
            <td><?php echo $text_custommenu5; ?> </td>
            <td><input type="text" name="custommenu_sub1_title" value="<?php echo $custommenu_sub1_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub1_url" value="<?php echo $custommenu_sub1_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu6; ?> </td>
            <td><input type="text" name="custommenu_sub2_title" value="<?php echo $custommenu_sub2_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub2_url" value="<?php echo $custommenu_sub2_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu7; ?> </td>
            <td><input type="text" name="custommenu_sub3_title" value="<?php echo $custommenu_sub3_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub3_url" value="<?php echo $custommenu_sub3_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu8; ?> </td>
            <td><input type="text" name="custommenu_sub4_title" value="<?php echo $custommenu_sub4_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub4_url" value="<?php echo $custommenu_sub4_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu9; ?> </td>
            <td><input type="text" name="custommenu_sub5_title" value="<?php echo $custommenu_sub5_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub5_url" value="<?php echo $custommenu_sub5_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu10; ?> </td>
            <td><input type="text" name="custommenu_sub6_title" value="<?php echo $custommenu_sub6_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub6_url" value="<?php echo $custommenu_sub6_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu11; ?> </td>
            <td><input type="text" name="custommenu_sub7_title" value="<?php echo $custommenu_sub7_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub7_url" value="<?php echo $custommenu_sub7_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu12; ?> </td>
            <td><input type="text" name="custommenu_sub8_title" value="<?php echo $custommenu_sub8_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub8_url" value="<?php echo $custommenu_sub8_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu13; ?> </td>
            <td><input type="text" name="custommenu_sub9_title" value="<?php echo $custommenu_sub9_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub9_url" value="<?php echo $custommenu_sub9_url; ?>" style="width:350px;"></td>
          </tr>
          <tr>
            <td><?php echo $text_custommenu14; ?> </td>
            <td><input type="text" name="custommenu_sub10_title" value="<?php echo $custommenu_sub10_title; ?>" style="width:200px;"></td>
            <td><input type="text" name="custommenu_sub10_url" value="<?php echo $custommenu_sub10_url; ?>" style="width:350px;"></td>
          </tr>
         
        </table>
     </div>
     
     
      
    </form>
  </div>
</div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
$('#tabs2 a').tabs();
//--></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<?php
echo $footer;
?>

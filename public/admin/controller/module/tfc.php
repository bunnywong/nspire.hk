<?php
class ControllerModuletfc extends Controller
{
    private $error = array();
    public function index()
    {
        $this->load->language('module/tfc');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('setting/setting');
    	$this->load->model('tool/image');
		
		
		$this->data['breadcrumbs'] = array();
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/tfc', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		
	
	if (isset($this->request->post['about_us_image'])) {
			$this->data['about_us_image'] = $this->request->post['about_us_image'];
			$about_us_image = $this->request->post['about_us_image'];
		} else {
			$this->data['about_us_image'] = 'fdd';
		}

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
            $this->model_setting_setting->editSetting('customFooter', $this->request->post);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->redirect(HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->
                session->data['token']);
        }

        $text_strings = array(
		'heading_title',
		'text_enabled',
		'text_disabled',
		'text_left',
		'text_right',
		'text_home',
		'entry_position',
		'entry_status',
		'entry_sort_order',
		'button_save',
		'button_cancel',
		'text_customfooter1',
		'text_customfooter2',
		'text_customfooter3',
		'text_customfooter4',
		'text_customfooter5',
		'text_customfooter6',
		'text_customfooter7',
		'text_customfooter8',
		'text_customfooter9',
		'text_customfooter10',
		'text_customfooter11',
		'text_customfooter12',
		'text_customfooter13',
		'text_customfooter14',
		'text_customfooter15',
		'text_customfooter16',
		'text_customfooter17',
		'text_customfooter18',
		'text_customfooter19',
		'text_customfooter20',
		'text_customfooter21',
		'text_customfooter22',
		'text_customfooter23',
		'text_customfooter24',
		'text_customfooter25',
		'text_contact1',
		'text_contact2',
		'text_contact3',
		'text_contact4',
		'text_contact5',
		'text_contact6',
		'text_contact7',
		'text_contact8',
		'text_contact9',
		'text_contact10',
		'text_custommenu1',
		'text_custommenu2',
		'text_custommenu3',
		'text_custommenu4',
		'text_custommenu5',
		'text_custommenu6',
		'text_custommenu7',
		'text_custommenu8',
		'text_custommenu9',
		'text_custommenu10',
		'text_custommenu11',
		'text_custommenu12',
		'text_custommenu13',
		'text_custommenu14',
		'text_custommenu15',	
		'text_custommenu16',
		'text_custommenu17',
		'text_custommenu18'		
            );

        foreach ($text_strings as $text) {
            $this->data[$text] = $this->language->get($text);
        }

        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        $this->data['action'] = HTTPS_SERVER . 'index.php?route=module/tfc&token=' .
            $this->session->data['token'];
        $this->data['cancel'] = HTTPS_SERVER . 'index.php?route=extension/module&token=' .
            $this->session->data['token'];

            $this->data['text_image_manager'] = 'Image manager';
					$this->data['token'] = $this->session->data['token'];		

        $config_data = array(
        'customFooter_status',
        'about_status',
		'about_header', 
		'about_text',
        'contact_header',
	    'contact_status',
        'telephone1',
        'telephone2',
        'email1',
        'email2',
        'contact_address',
        'fax',
        'facebook_status',
        'facebook_id',
        'custom_footer_column_status',
        'custom_footer_column_header',
        'custom_footer_column_content',
        'twitter_column_status',
        'twitter_column_header',
		'twitter_id',
        'twitter_username',
        'categories_column_status',
        'about_us_image',
        'about_us_image_status',
        'about_us_image_preview',
		'contact_textblockI',
		'contact_textblockII',
		'contact_mapcode',
		'contact_socialheader',
		'contact_sociallink_youtube',
		'contact_sociallink_facebook',
		'contact_sociallink_twitter',
		'contact_sociallink_vimeo',
		'custommenu_main_title',
		'custommenu_sub1_title',
		'custommenu_sub2_title',
		'custommenu_sub3_title',
		'custommenu_sub4_title',
		'custommenu_sub5_title',
		'custommenu_sub6_title',
		'custommenu_sub7_title',
		'custommenu_sub8_title',
		'custommenu_sub9_title',
		'custommenu_sub10_title',
		'custommenu_main_url',
		'custommenu_sub1_url',
		'custommenu_sub2_url',
		'custommenu_sub3_url',
		'custommenu_sub4_url',
		'custommenu_sub5_url',
		'custommenu_sub6_url',
		'custommenu_sub7_url',
		'custommenu_sub8_url',
		'custommenu_sub9_url',
		'custommenu_sub10_url',
		'custommenu_status',
		'custommenu_position'
        					);

        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }

        $this->template = 'module/tfc.tpl';
        $this->children = array('common/header', 'common/footer');
        
    if (isset($this->data['about_us_image']) && $this->data['about_us_image'] != "" && file_exists(DIR_IMAGE . $this->data['about_us_image'])) {
			$this->data['about_us_image_preview'] = $this->model_tool_image->resize($this->data['about_us_image'], 70, 70);
		} else {
			$this->data['about_us_image_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
        
        $this->response->setOutput($this->render(true), $this->config->get('config_compression'));
    }

    private function validate()
    {
        if (!$this->user->hasPermission('modify', 'module/tfc')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}
?>
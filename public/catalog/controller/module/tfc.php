<?php
class ControllerModuletfc extends Controller {
	protected function index() {
		$this->language->load ( 'module/tfc' );
		
		$this->data ['about_status'] = $this->config->get ( 'about_status' );	
		$this->data ['about_header'] = $this->config->get ( 'about_header' );
		$this->data ['about_text'] = $this->config->get ( 'about_text' );
		$this->data ['contact_status'] = $this->config->get ( 'contact_status' );
		$this->data ['contact_header'] = $this->config->get ( 'contact_header' );
		$this->data ['telephone1'] = $this->config->get ( 'telephone1' );
		$this->data ['telephone2'] = $this->config->get ( 'telephone2' );
		$this->data ['email1'] = $this->config->get ( 'email1' );
		$this->data ['email2'] = $this->config->get ( 'email2' );
		$this->data ['contact_address'] = $this->config->get ( 'contact_address' );
		$this->data ['fax'] = $this->config->get ( 'fax' );
		$this->data ['facebook_status'] = $this->config->get ( 'facebook_status' );		
		$this->data ['facebook_id'] = $this->config->get ( 'facebook_id' );	
		$this->data ['twitter_column_status'] = $this->config->get ( 'twitter_column_status' );
		$this->data ['twitter_column_header'] = $this->config->get ( 'twitter_column_header' );
		$this->data ['twitter_username'] = $this->config->get ( 'twitter_username' );
		$this->data ['twitter_id'] = $this->config->get ( 'twitter_id' );
		
		$this->data ['custom_footer_status'] = $this->config->get ( 'custom_footer_status' );		
		$this->data ['custom_footer_active_columns'] = $this->data ['about_status'] + $this->data ['contact_status'] + $this->data ['facebook_status'] + $this->data ['twitter_column_status'];
		
		$this->id = 'tfc';
		$this->template = $this->config->get ( 'config_template' ) . '/template/module/tfc.tpl';
		
		$this->render ();
	}
}
?>
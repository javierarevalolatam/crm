<?php /* Smarty version 2.6.29, created on 2017-06-25 09:27:15
         compiled from cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'counter', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 28, false),array('function', 'math', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 29, false),array('function', 'sugar_translate', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 35, false),array('function', 'sugar_getimage', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 98, false),array('function', 'html_options', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 120, false),array('function', 'sugar_getimagepath', 'cache/themes/SuiteP/modules/Cases/SearchForm_advanced.tpl', 264, false),)), $this); ?>


<script>
<?php echo '
	$(function() {
	var $dialog = $(\'<div></div>\')
		.html(SUGAR.language.get(\'app_strings\', \'LBL_SEARCH_HELP_TEXT\'))
		.dialog({
			autoOpen: false,
			title: SUGAR.language.get(\'app_strings\', \'LBL_SEARCH_HELP_TITLE\'),
			width: 700
		});
		
		$(\'.help-search\').click(function() {
		$dialog.dialog(\'open\');
		// prevent the default action, e.g., following a link
	});
	
	});
'; ?>

</script>
<div class="row">
  	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='case_number_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_NUMBER','module' => 'Cases'), $this);?>
</label>
		</div>
	<div clas="col-xs-12">
			
<?php if (strlen ( $this->_tpl_vars['fields']['case_number_advanced']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['case_number_advanced']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['case_number_advanced']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['case_number_advanced']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['case_number_advanced']['name']; ?>
' size='30' 
     
    value='<?php echo $this->_tpl_vars['value']; ?>
' title='' tabindex='' > 
   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='name_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_SUBJECT','module' => 'Cases'), $this);?>
</label>
		</div>
	<div clas="col-xs-12">
			
<?php if (strlen ( $this->_tpl_vars['fields']['name_advanced']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['name_advanced']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['name_advanced']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['name_advanced']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['name_advanced']['name']; ?>
' size='30' 
    maxlength='255' 
    value='<?php echo $this->_tpl_vars['value']; ?>
' title=''      >
   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='account_name_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCOUNT_NAME','module' => 'Cases'), $this);?>
</label>
		</div>
	<div clas="col-xs-12">
			
<input type="text" name="<?php echo $this->_tpl_vars['fields']['account_name_advanced']['name']; ?>
"  class="sqsEnabled"   id="<?php echo $this->_tpl_vars['fields']['account_name_advanced']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['account_name_advanced']['value']; ?>
" title='' autocomplete="off"  >
<input type="hidden"  id="<?php echo $this->_tpl_vars['fields']['account_id_advanced']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['account_id_advanced']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['account_name_advanced']['name']; ?>
"   title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
" class="button firstChild" value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
" onclick='open_popup("<?php echo $this->_tpl_vars['fields']['account_name_advanced']['module']; ?>
", 600, 400, "", true, false, <?php echo '{"call_back_function":"set_return","form_name":"search_form","field_to_name_array":{"id":"account_id_advanced","name":"account_name_advanced"}}'; ?>
, "single", true);'><?php echo smarty_function_sugar_getimage(array('alt' => $this->_tpl_vars['app_strings']['LBL_ID_FF_SELECT'],'name' => "id-ff-select",'ext' => ".png",'other_attributes' => ''), $this);?>
</button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['account_name_advanced']['name']; ?>
"   title="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_TITLE']; ?>
" class="button lastChild" onclick="this.form.<?php echo $this->_tpl_vars['fields']['account_name_advanced']['name']; ?>
.value = ''; this.form.<?php echo $this->_tpl_vars['fields']['account_id_advanced']['name']; ?>
.value = '';" value="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_LABEL']; ?>
"><?php echo smarty_function_sugar_getimage(array('name' => "id-ff-clear",'alt' => $this->_tpl_vars['app_strings']['LBL_ID_FF_CLEAR'],'ext' => ".png",'other_attributes' => ''), $this);?>
</button>
</span>

   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='type_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_TYPE','module' => 'Cases'), $this);?>
</label>
    	</div>
	<div clas="col-xs-12">
			
<?php echo smarty_function_html_options(array('id' => 'type_advanced','name' => 'type_advanced[]','options' => $this->_tpl_vars['fields']['type_advanced']['options'],'size' => '6','style' => "width: 150px",'multiple' => '1','selected' => $this->_tpl_vars['fields']['type_advanced']['value']), $this);?>

   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='state_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATE','module' => 'Cases'), $this);?>
</label>
    	</div>
	<div clas="col-xs-12">
			
<?php echo smarty_function_html_options(array('id' => 'state_advanced','name' => 'state_advanced[]','options' => $this->_tpl_vars['fields']['state_advanced']['options'],'size' => '6','style' => "width: 150px",'multiple' => '1','selected' => $this->_tpl_vars['fields']['state_advanced']['value']), $this);?>

   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='status_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATUS','module' => 'Cases'), $this);?>
</label>
		</div>
	<div clas="col-xs-12">
			
<?php echo smarty_function_html_options(array('id' => 'status_advanced','name' => 'status_advanced[]','options' => $this->_tpl_vars['fields']['status_advanced']['options'],'size' => '6','style' => "width: 150px",'multiple' => '1','selected' => $this->_tpl_vars['fields']['status_advanced']['value']), $this);?>

   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='assigned_user_id_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO','module' => 'Cases'), $this);?>
</label>
    	</div>
	<div clas="col-xs-12">
			
<?php echo smarty_function_html_options(array('id' => 'assigned_user_id_advanced','name' => 'assigned_user_id_advanced[]','options' => $this->_tpl_vars['fields']['assigned_user_id_advanced']['options'],'size' => '6','style' => "width: 150px",'multiple' => '1','selected' => $this->_tpl_vars['fields']['assigned_user_id_advanced']['value']), $this);?>

   	   	</div>
</div>
</div>
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-advanced-search">
	<div class="">
	
      

	<?php echo smarty_function_counter(array('assign' => 'index'), $this);?>

	<?php echo smarty_function_math(array('equation' => "left % right",'left' => $this->_tpl_vars['index'],'right' => $this->_tpl_vars['templateMeta']['maxColumns'],'assign' => 'modVal'), $this);?>


	<div class="col-xs-12">
			<label for='priority_advanced'><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PRIORITY','module' => 'Cases'), $this);?>
</label>
		</div>
	<div clas="col-xs-12">
			
<?php echo smarty_function_html_options(array('id' => 'priority_advanced','name' => 'priority_advanced[]','options' => $this->_tpl_vars['fields']['priority_advanced']['options'],'size' => '6','style' => "width: 150px",'multiple' => '1','selected' => $this->_tpl_vars['fields']['priority_advanced']['value']), $this);?>

   	   	</div>
</div>
</div>

<tr>
	<td colspan='20'>
		&nbsp;
	</td>
</tr>
<?php if ($this->_tpl_vars['DISPLAY_SAVED_SEARCH']): ?>
<tr>
	<td colspan='2'>
		<a class='tabFormAdvLink' onhover href='javascript:toggleInlineSearch()'>
            <?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_SHOW_OPTIONS'), $this);?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('alt_show_hide', ob_get_contents());ob_end_clean(); ?>
		<?php echo smarty_function_sugar_getimage(array('alt' => $this->_tpl_vars['alt_show_hide'],'name' => 'advanced_search','ext' => ".gif",'other_attributes' => 'border="0" id="up_down_img" '), $this);?>
&nbsp;<?php echo $this->_tpl_vars['APP']['LNK_SAVED_VIEWS']; ?>

		</a><br>
		<input type='hidden' id='showSSDIV' name='showSSDIV' value='<?php echo $this->_tpl_vars['SHOWSSDIV']; ?>
'><p>
	</td>
	<td scope='row' width='10%' nowrap="nowrap">
		<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SAVE_SEARCH_AS','module' => 'SavedSearch'), $this);?>
:
	</td>
	<td width='30%' nowrap>
		<input type='text' name='saved_search_name'>
		<input type='hidden' name='search_module' value=''>
		<input type='hidden' name='saved_search_action' value=''>
		<input title='<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
' value='<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
' class='button' type='button' name='saved_search_submit' onclick='SUGAR.savedViews.setChooser(); return SUGAR.savedViews.saved_search_action("save");'>
	</td>
	<td scope='row' width='10%' nowrap="nowrap">
	    <?php echo smarty_function_sugar_translate(array('label' => 'LBL_MODIFY_CURRENT_SEARCH','module' => 'SavedSearch'), $this);?>
:
	</td>
	<td width='30%' nowrap>
        <input class='button' onclick='SUGAR.savedViews.setChooser(); return SUGAR.savedViews.saved_search_action("update")' value='<?php echo $this->_tpl_vars['APP']['LBL_UPDATE']; ?>
' title='<?php echo $this->_tpl_vars['APP']['LBL_UPDATE']; ?>
' name='ss_update' id='ss_update' type='button' >
		<input class='button' onclick='return SUGAR.savedViews.saved_search_action("delete", "<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DELETE_CONFIRM','module' => 'SavedSearch'), $this);?>
")' value='<?php echo $this->_tpl_vars['APP']['LBL_DELETE']; ?>
' title='<?php echo $this->_tpl_vars['APP']['LBL_DELETE']; ?>
' name='ss_delete' id='ss_delete' type='button'>
		<br><span id='curr_search_name'></span>
	</td>
</tr>

<tr>
<td colspan='6'>
<div style='<?php echo $this->_tpl_vars['DISPLAYSS']; ?>
' id='inlineSavedSearch' >
	<?php echo $this->_tpl_vars['SAVED_SEARCH']; ?>

</div>
</td>
</tr>

<?php endif; ?>
<?php if ($this->_tpl_vars['displayType'] != 'popupView'): ?>
<tr>
	<td colspan='5'>
        <input tabindex='2' title='<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_BUTTON_TITLE']; ?>
' onclick='SUGAR.savedViews.setChooser()' class='button' type='submit' name='button' value='<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_BUTTON_LABEL']; ?>
' id='search_form_submit_advanced'/>&nbsp;
        <input tabindex='2' title='<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_TITLE']; ?>
'  onclick='SUGAR.searchForm.clear_form(this.form); document.getElementById("saved_search_select").options[0].selected=true; return false;' class='button' type='button' name='clear' id='search_form_clear_advanced' value='<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_LABEL']; ?>
'/>
        <?php if ($this->_tpl_vars['DOCUMENTS_MODULE']): ?>
        &nbsp;<input title="<?php echo $this->_tpl_vars['APP']['LBL_BROWSE_DOCUMENTS_BUTTON_TITLE']; ?>
" type="button" class="button" value="<?php echo $this->_tpl_vars['APP']['LBL_BROWSE_DOCUMENTS_BUTTON_LABEL']; ?>
" onclick='open_popup("Documents", 600, 400, "&caller=Documents", true, false, "");' />
        <?php endif; ?>
        <a id="basic_search_link" href="javascript:void(0)" accesskey="<?php echo $this->_tpl_vars['APP']['LBL_ADV_SEARCH_LNK_KEY']; ?>
" ><?php echo $this->_tpl_vars['APP']['LNK_BASIC_SEARCH']; ?>
</a>
        <span class='white-space'>
            &nbsp;&nbsp;&nbsp;<?php if ($this->_tpl_vars['SAVED_SEARCHES_OPTIONS']): ?>|&nbsp;&nbsp;&nbsp;<b><?php echo $this->_tpl_vars['APP']['LBL_SAVED_SEARCH_SHORTCUT']; ?>
</b>&nbsp;
            <?php echo $this->_tpl_vars['SAVED_SEARCHES_OPTIONS']; ?>
 <?php endif; ?>
            <span id='go_btn_span' style='display:none'><input tabindex='2' title='go_select' id='go_select'  onclick='SUGAR.searchForm.clear_form(this.form);' class='button' type='button' name='go_select' value=' <?php echo $this->_tpl_vars['APP']['LBL_GO_BUTTON_LABEL']; ?>
 '/></span>	
        </span>
	</td>
	<td class="help">
	    <?php if ($this->_tpl_vars['DISPLAY_SEARCH_HELP']): ?>
	    <img  border='0' src='<?php echo smarty_function_sugar_getimagepath(array('file' => "help-dashlet.gif"), $this);?>
' class="help-search">
	    <?php endif; ?>
    </td>
</tr>
<?php endif; ?>
</div>

<script>
<?php echo '
	if(typeof(loadSSL_Scripts)==\'function\'){
		loadSSL_Scripts();
	}
'; ?>
	
</script>
<script>
	<?php echo '
	$(document).ready(function () {
		$( \'#basic_search_link\' ).one( "click", function() {
			//alert( "This will be displayed only once." );
			SUGAR.searchForm.searchFormSelect(\''; ?>
<?php echo $this->_tpl_vars['module']; ?>
<?php echo '|basic_search\',\''; ?>
<?php echo $this->_tpl_vars['module']; ?>
<?php echo '|advanced_search\');
		});
	});
	'; ?>

</script><?php echo '<script language="javascript">if(typeof sqs_objects == \'undefined\'){var sqs_objects = new Array;}sqs_objects[\'search_form_modified_by_name_advanced\']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["modified_by_name_advanced","modified_user_id_advanced"],"required_list":["modified_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"Sin coincidencias"};sqs_objects[\'search_form_created_by_name_advanced\']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["created_by_name_advanced","created_by_advanced"],"required_list":["created_by"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"Sin coincidencias"};sqs_objects[\'search_form_assigned_user_name_advanced\']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name_advanced","assigned_user_id_advanced"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"Sin coincidencias"};sqs_objects[\'search_form_account_name_advanced\']={"form":"search_form","method":"query","modules":["Accounts"],"group":"or","field_list":["name","id"],"populate_list":["search_form_account_name_advanced","account_id_advanced"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"required_list":["account_id"],"order":"name","limit":"30","no_match_text":"Sin coincidencias"};sqs_objects[\'search_form_contact_created_by_name_advanced\']={"form":"search_form","method":"get_contact_array","modules":["Contacts"],"field_list":["salutation","first_name","last_name","id"],"populate_list":["contact_created_by_name_advanced","contact_created_by_id_advanced","contact_created_by_id_advanced","contact_created_by_id_advanced"],"required_list":["contact_created_by_id"],"group":"or","conditions":[{"name":"first_name","op":"like_custom","end":"%","value":""},{"name":"last_name","op":"like_custom","end":"%","value":""}],"order":"last_name","limit":"30","no_match_text":"Sin coincidencias"};</script>'; ?>
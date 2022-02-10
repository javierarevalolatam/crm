

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<input type="hidden" name="account_id" value="{$smarty.request.account_id}">   
<input type="hidden" name="contact_id" value="{$smarty.request.contact_id}">   
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_Bugs'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_Bugs'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'Bugs_subpanel_save_button');return false;" type="submit" name="Bugs_subpanel_save_button" id="Bugs_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="Bugs_subpanel_cancel_button" id="Bugs_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_Bugs'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="Bugs_subpanel_full_form_button" id="Bugs_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Bugs", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right'>
{$PAGINATION}
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">test</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='Bugs'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="detailpanel_-1">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">


<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PRIORITY' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="priority"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.priority.name}" 
id="{$fields.priority.name}" 
title=''       
>
{if isset($fields.priority.value) && $fields.priority.value != ''}
{html_options options=$fields.priority.options selected=$fields.priority.value}
{else}
{html_options options=$fields.priority.options selected=$fields.priority.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.priority.options }
{capture name="field_val"}{$fields.priority.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.priority.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.priority.name}" 
id="{$fields.priority.name}" 
title=''          
>
{if isset($fields.priority.value) && $fields.priority.value != ''}
{html_options options=$fields.priority.options selected=$fields.priority.value}
{else}
{html_options options=$fields.priority.options selected=$fields.priority.default}
{/if}
</select>
<input
id="{$fields.priority.name}-input"
name="{$fields.priority.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.priority.name}-image"></button><button type="button"
id="btn-clear-{$fields.priority.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.priority.name}-input', '{$fields.priority.name}');sync_{$fields.priority.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.priority.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.priority.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.priority.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.priority.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.priority.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.priority.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>

<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_Bugs","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>


<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_SOURCE' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="source"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.source.name}" 
id="{$fields.source.name}" 
title=''       
>
{if isset($fields.source.value) && $fields.source.value != ''}
{html_options options=$fields.source.options selected=$fields.source.value}
{else}
{html_options options=$fields.source.options selected=$fields.source.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.source.options }
{capture name="field_val"}{$fields.source.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.source.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.source.name}" 
id="{$fields.source.name}" 
title=''          
>
{if isset($fields.source.value) && $fields.source.value != ''}
{html_options options=$fields.source.options selected=$fields.source.value}
{else}
{html_options options=$fields.source.options selected=$fields.source.default}
{/if}
</select>
<input
id="{$fields.source.name}-input"
name="{$fields.source.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.source.name}-image"></button><button type="button"
id="btn-clear-{$fields.source.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.source.name}-input', '{$fields.source.name}');sync_{$fields.source.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.source.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.source.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.source.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.source.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.source.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.source.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.source.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.source.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.source.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.source.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>

<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

&nbsp;

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="" field=""  >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>


<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_TYPE' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="type"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.type.name}" 
id="{$fields.type.name}" 
title=''       
>
{if isset($fields.type.value) && $fields.type.value != ''}
{html_options options=$fields.type.options selected=$fields.type.value}
{else}
{html_options options=$fields.type.options selected=$fields.type.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.type.options }
{capture name="field_val"}{$fields.type.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.type.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.type.name}" 
id="{$fields.type.name}" 
title=''          
>
{if isset($fields.type.value) && $fields.type.value != ''}
{html_options options=$fields.type.options selected=$fields.type.value}
{else}
{html_options options=$fields.type.options selected=$fields.type.default}
{/if}
</select>
<input
id="{$fields.type.name}-input"
name="{$fields.type.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.type.name}-image"></button><button type="button"
id="btn-clear-{$fields.type.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.type.name}-input', '{$fields.type.name}');sync_{$fields.type.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.type.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.type.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.type.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.type.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.type.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.type.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.type.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.type.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.type.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.type.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>

<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''       
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.status.options }
{capture name="field_val"}{$fields.status.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.status.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''          
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
<input
id="{$fields.status.name}-input"
name="{$fields.status.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.status.name}-image"></button><button type="button"
id="btn-clear-{$fields.status.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.status.name}-input', '{$fields.status.name}');sync_{$fields.status.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.status.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.status.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.status.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.status.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.status.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.status.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>


<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PRODUCT_CATEGORY' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="product_category"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.product_category.name}" 
id="{$fields.product_category.name}" 
title=''       
>
{if isset($fields.product_category.value) && $fields.product_category.value != ''}
{html_options options=$fields.product_category.options selected=$fields.product_category.value}
{else}
{html_options options=$fields.product_category.options selected=$fields.product_category.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.product_category.options }
{capture name="field_val"}{$fields.product_category.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.product_category.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.product_category.name}" 
id="{$fields.product_category.name}" 
title=''          
>
{if isset($fields.product_category.value) && $fields.product_category.value != ''}
{html_options options=$fields.product_category.options selected=$fields.product_category.value}
{else}
{html_options options=$fields.product_category.options selected=$fields.product_category.default}
{/if}
</select>
<input
id="{$fields.product_category.name}-input"
name="{$fields.product_category.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.product_category.name}-image"></button><button type="button"
id="btn-clear-{$fields.product_category.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.product_category.name}-input', '{$fields.product_category.name}');sync_{$fields.product_category.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.product_category.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.product_category.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.product_category.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.product_category.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.product_category.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.product_category.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.product_category.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.product_category.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.product_category.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.product_category.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>

<!-- COLUMN -->
<div class="col-xs-12 col-sm-6 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_FOUND_IN_RELEASE' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="found_in_release"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.found_in_release.name}" 
id="{$fields.found_in_release.name}" 
title=''       
>
{if isset($fields.found_in_release.value) && $fields.found_in_release.value != ''}
{html_options options=$fields.found_in_release.options selected=$fields.found_in_release.value}
{else}
{html_options options=$fields.found_in_release.options selected=$fields.found_in_release.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.found_in_release.options }
{capture name="field_val"}{$fields.found_in_release.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.found_in_release.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.found_in_release.name}" 
id="{$fields.found_in_release.name}" 
title=''          
>
{if isset($fields.found_in_release.value) && $fields.found_in_release.value != ''}
{html_options options=$fields.found_in_release.options selected=$fields.found_in_release.value}
{else}
{html_options options=$fields.found_in_release.options selected=$fields.found_in_release.default}
{/if}
</select>
<input
id="{$fields.found_in_release.name}-input"
name="{$fields.found_in_release.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.found_in_release.name}-image"></button><button type="button"
id="btn-clear-{$fields.found_in_release.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.found_in_release.name}-input', '{$fields.found_in_release.name}');sync_{$fields.found_in_release.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.found_in_release.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.found_in_release.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.found_in_release.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.found_in_release.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.found_in_release.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.found_in_release.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.found_in_release.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.found_in_release.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.found_in_release.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.found_in_release.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>


<!-- COLUMN -->
<div class="col-xs-12 col-sm-12 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_SUBJECT' module='Bugs'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}  
<input type='text' name='{$fields.name.name}' 
id='{$fields.name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>


<!-- COLUMN -->
<div class="col-xs-12 col-sm-12 edit-view-row-item">
<!-- [hide!!] -->
<!-- LABEL -->
<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Bugs'}{/capture}
{$label|strip_semicolon}:

</div>
<!-- VALUE -->
<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6"
cols="80"
title='' tabindex="" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_Bugs'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_Bugs'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'Bugs_subpanel_save_button');return false;" type="submit" name="Bugs_subpanel_save_button" id="Bugs_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="Bugs_subpanel_cancel_button" id="Bugs_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_Bugs'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="Bugs_subpanel_full_form_button" id="Bugs_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Bugs", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_Bugs",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_Bugs) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li').click(function(e){
            if(typeof $(this).find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse"]').click(function(e){
            var content;
            if($(this).hasClass('collapsed')) {
                $(this).removeClass('collapsed');
                if($(this).closest('.panel-content').length) {
                    content = $(this).closest('.panel-content').find('.panel-body.panel-collapse.collapse');
                }
                else if($(this).closest('.panel.panel-default').length){
                    content = $(this).closest('.panel.panel-default').next();
                }
                content.addClass('in');
            } else {
                $(this).addClass('collapsed');
                if($(this).closest('.panel-content').length) {
                    content = $(this).closest('.panel-content').find('.panel-body.panel-collapse.collapse');
                }
                else if($(this).closest('.panel.panel-default').length){
                    content = $(this).closest('.panel.panel-default').next();
                }
                content.removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('form_SubpanelQuickCreate_Bugs');addToValidate('form_SubpanelQuickCreate_Bugs', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_SUBJECT' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'date_entered_date', 'date', false,'Fecha de Creación' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'date_modified_date', 'date', false,'Fecha de Modificación' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'bug_number', 'int', true,'{/literal}{sugar_translate label='LBL_NUMBER' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'type', 'enum', false,'{/literal}{sugar_translate label='LBL_TYPE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'status', 'enum', false,'{/literal}{sugar_translate label='LBL_STATUS' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'priority', 'enum', false,'{/literal}{sugar_translate label='LBL_PRIORITY' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'resolution', 'enum', false,'{/literal}{sugar_translate label='LBL_RESOLUTION' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'work_log', 'text', false,'{/literal}{sugar_translate label='LBL_WORK_LOG' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'found_in_release', 'enum', false,'{/literal}{sugar_translate label='LBL_FOUND_IN_RELEASE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'release_name', 'relate', false,'{/literal}{sugar_translate label='LBL_FOUND_IN_RELEASE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'fixed_in_release', 'enum', false,'{/literal}{sugar_translate label='LBL_FIXED_IN_RELEASE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'fixed_in_release_name', 'relate', false,'{/literal}{sugar_translate label='LBL_FIXED_IN_RELEASE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'source', 'enum', false,'{/literal}{sugar_translate label='LBL_SOURCE' module='Bugs' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_Bugs', 'product_category', 'enum', false,'{/literal}{sugar_translate label='LBL_PRODUCT_CATEGORY' module='Bugs' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_Bugs', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='Bugs' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='Bugs' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_Bugs_assigned_user_name']={"form":"form_SubpanelQuickCreate_Bugs","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"Sin coincidencias"};</script>{/literal}

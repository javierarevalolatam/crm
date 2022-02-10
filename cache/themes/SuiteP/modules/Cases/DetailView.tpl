

<script language="javascript">
    {literal}
    SUGAR.util.doWhen(function () {
        return $("#contentTable").length == 0;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
{if !$config.enable_action_menu}
<div class="buttons">
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} 
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} 
{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} 
{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} 
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Cases", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>                    {/if}
</form>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>
{sugar_include include=$includes}
<div>

<ul class="nav nav-tabs">


<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
{sugar_translate label='LBL_CASE_INFORMATION' module='Cases'}
</a>
<a id="xstab0" href="#" class="visible-xs first-tab-xs dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='LBL_CASE_INFORMATION' module='Cases'}
</a>
<ul id="first-tab-menu-xs" class="dropdown-menu">
<li role="presentation">
<a id="tab0" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-0');">
{sugar_translate label='LBL_CASE_INFORMATION' module='Cases'}
</a>
</li>
<li role="presentation">
<a id="tab1" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-1');">
{sugar_translate label='LBL_AOP_CASE_UPDATES' module='Cases'}
</a>
</li>
</ul>
</li>


{if $config.enable_action_menu}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Acciones</a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
<li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Cases", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li>
</ul>        </li>
{/if}
</ul>
<div class="clearfix"></div>
<!-- TAB CONTENT USE TABS -->
<div class="tab-content">

<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>

<!-- tab_panel_content.tpl START -->
<!-- tab panel main div -->

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_CASE_NUMBER' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field " type="int" field="case_number"  >
<!-- simple hidden start -->
{if !$fields.case_number.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.case_number.name}">
{assign var="value" value=$fields.case_number.value }
{$value}
</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_PRIORITY' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="priority"  >
<!-- simple hidden start -->
{if !$fields.priority.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.priority.options)}
<input type="hidden" class="sugar_field" id="{$fields.priority.name}" value="{ $fields.priority.options }">
{ $fields.priority.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.priority.name}" value="{ $fields.priority.value }">
{ $fields.priority.options[$fields.priority.value]}
{/if}
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_STATE' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="state"  >
<!-- simple hidden start -->
{if !$fields.state.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.state.options)}
<input type="hidden" class="sugar_field" id="{$fields.state.name}" value="{ $fields.state.options }">
{ $fields.state.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.state.name}" value="{ $fields.state.value }">
{ $fields.state.options[$fields.state.value]}
{/if}
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="dynamicenum" field="status"  >
<!-- simple hidden start -->
{if !$fields.status.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_TYPE' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="type"  >
<!-- simple hidden start -->
{if !$fields.type.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.type.options)}
<input type="hidden" class="sugar_field" id="{$fields.type.name}" value="{ $fields.type.options }">
{ $fields.type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.type.name}" value="{ $fields.type.value }">
{ $fields.type.options[$fields.type.value]}
{/if}
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_ACCOUNT_NAME' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="account_name"  >
<!-- simple hidden start -->
{if !$fields.account_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.account_id.value)}
{capture assign="detail_url"}index.php?module=Accounts&action=DetailView&record={$fields.account_id.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="account_id" class="sugar_field" data-id-value="{$fields.account_id.value}">{$fields.account_name.value}</span>
{if !empty($fields.account_id.value)}</a>{/if}
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_SUBJECT' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="name" field="name" colspan='3' >
<!-- simple hidden start -->
{if !$fields.name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="text" field="description" colspan='3' >
<!-- simple hidden start -->
{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|url2html|nl2br}">{$fields.description.value|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_RESOLUTION' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="text" field="resolution" colspan='3' >
<!-- simple hidden start -->
{if !$fields.resolution.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.resolution.name|escape:'html'|url2html|nl2br}">{$fields.resolution.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="relate" field="assigned_user_name" colspan='3' >
<!-- simple hidden start -->
{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}
</div>
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_ENTERED' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_entered"  >
<!-- simple hidden start -->
{if !$fields.date_entered.hidden}
{counter name="panelFieldCount" print=false}
<span id="date_entered" class="sugar_field">{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_MODIFIED' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_modified"  >
<!-- simple hidden start -->
{if !$fields.date_modified.hidden}
{counter name="panelFieldCount" print=false}
<span id="date_modified" class="sugar_field">{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>
<!-- /tab panel main div -->                        </div>
</div>

<div class="panel-content">
<div>&nbsp;</div>






<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#LBL_AOP_CASE_UPDATES" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_AOP_CASE_UPDATES' module='Cases'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="LBL_AOP_CASE_UPDATES">
<div class="tab-content">
<!-- TAB CONTENT -->

<!-- tab_panel_content.tpl START -->
<!-- tab panel main div -->

<!-- ROW -->
<div class="row detail-view-row">

<!-- COLUMN -->
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_AOP_CASE_UPDATES_THREADED' module='Cases'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field " type="function" field="aop_case_updates_threaded" colspan='3' >
<!-- simple hidden start -->
{if !$fields.aop_case_updates_threaded.hidden}
{counter name="panelFieldCount" print=false}
<span id='aop_case_updates_threaded_span'>
{$fields.aop_case_updates_threaded.value}
</span>
{/if}
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<!-- [/hide!!] -->
</div>
<!-- /DIV column -->
</div>
<!-- /tab panel main div -->                </div>
</div>
</div>
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
{*<script type='text/javascript' src='{sugar_getjspath file='include/javascript/popup_helper.js'}'></script>*}
{*<script type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui_widgets.js'}"></script>*}

        
        
    

<script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>
{literal}
<script type="text/javascript">

        var selectTab = function(tab) {
            $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
            $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
        };

        var selectTabOnError = function(tab) {
            selectTab(tab);
            $('#content ul.nav.nav-tabs li').removeClass('active');
            $('#content ul.nav.nav-tabs li a').css('color', '');

            $('#content ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
            $('#content ul.nav.nav-tabs li').eq(tab).addClass('active');

        };

        var selectTabOnErrorInputHandle = function(inputHandle) {
            var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
            selectTabOnError(tab);
        };


        $(function(){
            $('#content ul.nav.nav-tabs li').click(function(e){
                if(typeof $(this).find('a').first().attr('id') != 'undefined') {
                    var tab = parseInt($(this).find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                    selectTab(tab);
                }
            });
            $('#content ul.nav.nav-tabs li.active').each(function(e){
                if(typeof $(this).find('a').first().attr('id') != 'undefined') {
                    var tab = parseInt($(this).find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                    selectTab(tab);
                }
            });
        });

    </script>
{/literal}
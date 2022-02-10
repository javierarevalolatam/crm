

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
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} 
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} 
{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} 
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
{sugar_translate label='DEFAULT' module='ProjectTask'}
</a>
<a id="xstab0" href="#" class="visible-xs first-tab-xs dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='DEFAULT' module='ProjectTask'}
</a>
<ul id="first-tab-menu-xs" class="dropdown-menu">
<li role="presentation">
<a id="tab0" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-0');">
{sugar_translate label='DEFAULT' module='ProjectTask'}
</a>
</li>
<li role="presentation">
<a id="tab1" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-1');">
{sugar_translate label='LBL_PANEL_TIMELINE' module='ProjectTask'}
</a>
</li>
</ul>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab1" data-toggle="tab">
{sugar_translate label='LBL_PANEL_TIMELINE' module='ProjectTask'}
</a>
</li>
{if $config.enable_action_menu}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Acciones</a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='ProjectTask'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="name" field="name"  >
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

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="status"  >
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_START' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="date_start"  >
<!-- simple hidden start -->
{if !$fields.date_start.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.date_start.value) <= 0}
{assign var="value" value=$fields.date_start.default_value }
{else}
{assign var="value" value=$fields.date_start.value }
{/if}
<span class="sugar_field" id="{$fields.date_start.name}">{$value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_FINISH' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="date_finish"  >
<!-- simple hidden start -->
{if !$fields.date_finish.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.date_finish.value) <= 0}
{assign var="value" value=$fields.date_finish.default_value }
{else}
{assign var="value" value=$fields.date_finish.value }
{/if}
<span class="sugar_field" id="{$fields.date_finish.name}">{$value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_PRIORITY' module='ProjectTask'}{/capture}
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

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_PERCENT_COMPLETE' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="percent_complete"  >
<!-- simple hidden start -->
{if !$fields.percent_complete.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.percent_complete.name}">
{sugar_number_format precision=0 var=$fields.percent_complete.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_PARENT_ID' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="project_name"  >
<!-- simple hidden start -->
{if !$fields.project_name.hidden}
{counter name="panelFieldCount" print=false}
<span id="project_name" class="sugar_field"><a href="index.php?module=Project&action=DetailView&record={$fields.project_id.value}">{$fields.project_name.value}&nbsp;</a></span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_TASK_NUMBER' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="task_number"  >
<!-- simple hidden start -->
{if !$fields.task_number.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.task_number.name}">
{sugar_number_format precision=0 var=$fields.task_number.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_USER_ID' module='ProjectTask'}{/capture}
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
<!-- DIV column - colspan = 3 -->
<div class="col-xs-12 col-sm-12 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan = 3 -->
<div class="col-xs-12 col-sm-2 label col-1-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="text" field="description" colspan='3' >
<!-- simple hidden start -->
{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
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
<!-- /tab panel main div -->                        </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-1'>

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
{capture name="label" assign="label"}{sugar_translate label='LBL_ESTIMATED_EFFORT' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="estimated_effort"  >
<!-- simple hidden start -->
{if !$fields.estimated_effort.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.estimated_effort.name}">
{sugar_number_format precision=0 var=$fields.estimated_effort.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ACTUAL_EFFORT' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="actual_effort"  >
<!-- simple hidden start -->
{if !$fields.actual_effort.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.actual_effort.name}">
{sugar_number_format precision=0 var=$fields.actual_effort.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_PREDECESSORS' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="text" field="predecessors"  >
<!-- simple hidden start -->
{if !$fields.predecessors.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.predecessors.name|escape:'html'|url2html|nl2br}">{$fields.predecessors.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_RELATIONSHIP_TYPE' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="relationship_type"  >
<!-- simple hidden start -->
{if !$fields.relationship_type.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.relationship_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.relationship_type.name}" value="{ $fields.relationship_type.options }">
{ $fields.relationship_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.relationship_type.name}" value="{ $fields.relationship_type.value }">
{ $fields.relationship_type.options[$fields.relationship_type.value]}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ORDER_NUMBER' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="order_number"  >
<!-- simple hidden start -->
{if !$fields.order_number.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.order_number.name}">
{sugar_number_format precision=0 var=$fields.order_number.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_MILESTONE_FLAG' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="bool" field="milestone_flag"  >
<!-- simple hidden start -->
{if !$fields.milestone_flag.hidden}
{counter name="panelFieldCount" print=false}

{if strval($fields.milestone_flag.value) == "1" || strval($fields.milestone_flag.value) == "yes" || strval($fields.milestone_flag.value) == "on"} 
{assign var="checked" value='checked="checked"'}
{else}
{assign var="checked" value=""}
{/if}
<input type="checkbox" class="checkbox" name="{$fields.milestone_flag.name}" id="{$fields.milestone_flag.name}" value="$fields.milestone_flag.value" disabled="true" {$checked}>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_UTILIZATION' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="utilization"  >
<!-- simple hidden start -->
{if !$fields.utilization.hidden}
{counter name="panelFieldCount" print=false}
<span id='utilization_span'>
{$fields.utilization.value}
</span>
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
</div>
<!-- /DIV column -->
<div class="clear"></div>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DURATION' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="duration"  >
<!-- simple hidden start -->
{if !$fields.duration.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.duration.name}">
{sugar_number_format precision=0 var=$fields.duration.value}
</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DURATION_UNIT' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="text" field="duration_unit"  >
<!-- simple hidden start -->
{if !$fields.duration_unit.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.duration_unit.name|escape:'html'|url2html|nl2br}">{$fields.duration_unit.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
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
<!-- /tab panel main div -->                        </div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




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
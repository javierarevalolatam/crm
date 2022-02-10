
<!--
/*********************************************************************************
* SugarCRM Community Edition is a customer relationship management program developed by
* SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
* SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
* Copyright (C) 2011 - 2014 Salesagility Ltd.
*
* This program is free software; you can redistribute it and/or modify it under
* the terms of the GNU Affero General Public License version 3 as published by the
* Free Software Foundation with the addition of the following permission added
* to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
* IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
* OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
* details.
*
* You should have received a copy of the GNU Affero General Public License along with
* this program; if not, see http://www.gnu.org/licenses or write to the Free
* Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
* 02110-1301 USA.
*
* You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
* SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
*
* The interactive user interfaces in modified source and object code versions
* of this program must display Appropriate Legal Notices, as required under
* Section 5 of the GNU Affero General Public License version 3.
*
* In accordance with Section 7(b) of the GNU Affero General Public License version 3,
* these Appropriate Legal Notices must retain the display of the "Powered by
* SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
* reasonably feasible for  technical reasons, the Appropriate Legal Notices must
* display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
********************************************************************************/
-->
<script type='text/javascript' src='{sugar_getjspath file='modules/Users/DetailView.js'}'></script>
<script type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui_widgets.js'}"></script>
<script type='text/javascript'>
var LBL_NEW_USER_PASSWORD = '{$MOD.LBL_NEW_USER_PASSWORD_2}';
{if !empty($ERRORS)}
{literal}
YAHOO.SUGAR.MessageBox.show({title: '{/literal}{$ERROR_MESSAGE}{literal}', msg: '{/literal}{$ERRORS}{literal}'} );
{/literal}
{/if}
</script>
<script type="text/javascript">
var user_detailview_tabs = new YAHOO.widget.TabView("user_detailview_tabs");

{literal}
user_detailview_tabs.on('contentReady', function(e){
{/literal}
});
{literal}
$(document).ready(function(){
        $("ul.clickMenu").each(function(index, node){
            $(node).sugarActionMenu();
        });
    });
{/literal}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="actionsContainer">
<tr>
<td width="20%">
<form action="index.php" method="post" name="DetailView" id="form">
<input type="hidden" name="module" value="Users">
<input type="hidden" name="record" value="{$ID}">
<input type="hidden" name="isDuplicate" value=false>
<input type="hidden" name="action">
<input type="hidden" name="user_name" value="{$USER_NAME}">
<input type="hidden" id="user_type" name="user_type" value="{$UserType}">
<input type="hidden" name="password_generate">
<input type="hidden" name="old_password">
<input type="hidden" name="new_password">
<input type="hidden" name="return_module">
<input type="hidden" name="return_action">
<input type="hidden" name="return_id">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><td colspan='2' width="100%" nowrap>
{sugar_action_menu id="detail_header_action_menu" class="clickMenu fancymenu" buttons=$EDITBUTTONS}
</td></tr>
</table>
</form>
</td>
<td width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
{$PAGINATION}
</table>
</td>
</tr>
</table>
<div id="user_detailview_tabs" class="yui-navset detailview_tabs">
<ul class="yui-nav">
<li class="selected"><a id="tab1" href="#tab1"><em>{$MOD.LBL_USER_INFORMATION}</em></a></li>
<li {if $IS_GROUP_OR_PORTAL}style="display: none;"{/if}><a id="tab2" href="#tab2"><em>{$MOD.LBL_ADVANCED}</em></a></li>
{if $SHOW_ROLES}
<li><a id="tab3" href="#tab3"><em>{$MOD.LBL_USER_ACCESS}</em></a></li>
{/if}
</ul>
<div class="yui-content">
<div>
{sugar_include include=$includes}
<div>

<ul class="nav nav-tabs">
{if $config.enable_action_menu}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Acciones</a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Users'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Users'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Users'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
</ul>        </li>
{/if}
</ul>
<div class="clearfix"></div>
<!-- TAB CONTENT DOESN'T USE TABS -->
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane-NOBOOTSTRAPTOGGLER panel-collapse"></div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel--1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_USER_INFORMATION' module='Users'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="top-panel--1">
<div class="tab-content">
<!-- TAB CONTENT -->

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
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="name" field="full_name"  >
<!-- simple hidden start -->
{if !$fields.full_name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.full_name.value) <= 0}
{assign var="value" value=$fields.full_name.default_value }
{else}
{assign var="value" value=$fields.full_name.value }
{/if} 
<span class="sugar_field" id="{$fields.full_name.name}">{$fields.full_name.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_USER_NAME' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="user_name" field="user_name"  >
<!-- simple hidden start -->
{if !$fields.user_name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.user_name.value) <= 0}
{assign var="value" value=$fields.user_name.default_value }
{else}
{assign var="value" value=$fields.user_name.value }
{/if} 
<span class="sugar_field" id="{$fields.user_name.name}">{$fields.user_name.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Users'}{/capture}
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

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_USER_TYPE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="UserType"  >
<!-- simple hidden start -->
{if !$fields.UserType.hidden}
{counter name="panelFieldCount" print=false}
<span id="UserType" class="sugar_field">{$USER_TYPE_READONLY}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_PHOTO' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="image" field="photo" colspan='3' >
<!-- simple hidden start -->
{if !$fields.photo.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.photo.name}">
<img src="index.php?entryPoint=download&id={$fields.id.value}_{$fields.photo.name}{$fields.width.value}&type={$module}" style="max-width: {if !$vardef.width}160{else}200{/if}px;" height="{if !$vardef.height}160{else}50{/if}">
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
<!-- /tab panel main div -->                </div>
</div>
</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel-0" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_EMPLOYEE_INFORMATION' module='Users'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="top-panel-0">
<div class="tab-content">
<!-- TAB CONTENT -->

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
{capture name="label" assign="label"}{sugar_translate label='LBL_EMPLOYEE_STATUS' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="employee_status"  >
<!-- simple hidden start -->
{if !$fields.employee_status.hidden}
{counter name="panelFieldCount" print=false}
<span id='employee_status_span'>
{$fields.employee_status.value}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_SHOW_ON_EMPLOYEES' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="bool" field="show_on_employees"  >
<!-- simple hidden start -->
{if !$fields.show_on_employees.hidden}
{counter name="panelFieldCount" print=false}

{if strval($fields.show_on_employees.value) == "1" || strval($fields.show_on_employees.value) == "yes" || strval($fields.show_on_employees.value) == "on"} 
{assign var="checked" value='checked="checked"'}
{else}
{assign var="checked" value=""}
{/if}
<input type="checkbox" class="checkbox" name="{$fields.show_on_employees.name}" id="{$fields.show_on_employees.name}" value="$fields.show_on_employees.value" disabled="true" {$checked}>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_TITLE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="title"  >
<!-- simple hidden start -->
{if !$fields.title.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.title.value) <= 0}
{assign var="value" value=$fields.title.default_value }
{else}
{assign var="value" value=$fields.title.value }
{/if} 
<span class="sugar_field" id="{$fields.title.name}">{$fields.title.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_WORK_PHONE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="phone" field="phone_work"  class="phone">
<!-- simple hidden start -->
{if !$fields.phone_work.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.phone_work.value)}
{assign var="phone_value" value=$fields.phone_work.value }
{sugar_phone value=$phone_value usa_format="0"}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DEPARTMENT' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="department"  >
<!-- simple hidden start -->
{if !$fields.department.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.department.value) <= 0}
{assign var="value" value=$fields.department.default_value }
{else}
{assign var="value" value=$fields.department.value }
{/if} 
<span class="sugar_field" id="{$fields.department.name}">{$fields.department.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_MOBILE_PHONE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="phone" field="phone_mobile"  class="phone">
<!-- simple hidden start -->
{if !$fields.phone_mobile.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.phone_mobile.value)}
{assign var="phone_value" value=$fields.phone_mobile.value }
{sugar_phone value=$phone_value usa_format="0"}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_REPORTS_TO_NAME' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="reports_to_name"  >
<!-- simple hidden start -->
{if !$fields.reports_to_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="reports_to_id" class="sugar_field" data-id-value="{$fields.reports_to_id.value}">{$fields.reports_to_name.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_OTHER_PHONE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="phone" field="phone_other"  class="phone">
<!-- simple hidden start -->
{if !$fields.phone_other.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.phone_other.value)}
{assign var="phone_value" value=$fields.phone_other.value }
{sugar_phone value=$phone_value usa_format="0"}
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
</div>
<!-- /DIV column -->
<div class="clear"></div>

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_FAX_PHONE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="phone" field="phone_fax"  class="phone">
<!-- simple hidden start -->
{if !$fields.phone_fax.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.phone_fax.value)}
{assign var="phone_value" value=$fields.phone_fax.value }
{sugar_phone value=$phone_value usa_format="0"}
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
</div>
<!-- /DIV column -->
<div class="clear"></div>

<!-- COLUMN -->
<!-- DIV column - colspan != 3 -->
<div class="col-xs-12 col-sm-6 detail-view-row-item">
<!-- [hide!!] -->
<!-- DIV inside - colspan != 3 -->
<div class="col-xs-12 col-sm-4 label col-2-label">

<!-- LABEL -->
{capture name="label" assign="label"}{sugar_translate label='LBL_HOME_PHONE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="phone" field="phone_home"  class="phone">
<!-- simple hidden start -->
{if !$fields.phone_home.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.phone_home.value)}
{assign var="phone_value" value=$fields.phone_home.value }
{sugar_phone value=$phone_value usa_format="0"}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_MESSENGER_TYPE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="messenger_type"  >
<!-- simple hidden start -->
{if !$fields.messenger_type.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.messenger_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.messenger_type.name}" value="{ $fields.messenger_type.options }">
{ $fields.messenger_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.messenger_type.name}" value="{ $fields.messenger_type.value }">
{ $fields.messenger_type.options[$fields.messenger_type.value]}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_MESSENGER_ID' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="messenger_id"  >
<!-- simple hidden start -->
{if !$fields.messenger_id.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.messenger_id.value) <= 0}
{assign var="value" value=$fields.messenger_id.default_value }
{else}
{assign var="value" value=$fields.messenger_id.value }
{/if} 
<span class="sugar_field" id="{$fields.messenger_id.name}">{$fields.messenger_id.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_STREET' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="address_street"  >
<!-- simple hidden start -->
{if !$fields.address_street.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.address_street.value) <= 0}
{assign var="value" value=$fields.address_street.default_value }
{else}
{assign var="value" value=$fields.address_street.value }
{/if} 
<span class="sugar_field" id="{$fields.address_street.name}">{$fields.address_street.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_CITY' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="address_city"  >
<!-- simple hidden start -->
{if !$fields.address_city.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.address_city.value) <= 0}
{assign var="value" value=$fields.address_city.default_value }
{else}
{assign var="value" value=$fields.address_city.value }
{/if} 
<span class="sugar_field" id="{$fields.address_city.name}">{$fields.address_city.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_STATE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="address_state"  >
<!-- simple hidden start -->
{if !$fields.address_state.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.address_state.value) <= 0}
{assign var="value" value=$fields.address_state.default_value }
{else}
{assign var="value" value=$fields.address_state.value }
{/if} 
<span class="sugar_field" id="{$fields.address_state.name}">{$fields.address_state.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_POSTALCODE' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="address_postalcode"  >
<!-- simple hidden start -->
{if !$fields.address_postalcode.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.address_postalcode.value) <= 0}
{assign var="value" value=$fields.address_postalcode.default_value }
{else}
{assign var="value" value=$fields.address_postalcode.value }
{/if} 
<span class="sugar_field" id="{$fields.address_postalcode.name}">{$fields.address_postalcode.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_COUNTRY' module='Users'}{/capture}
{$label|strip_semicolon}:
</div>
<!-- /DIV inside  -->
<!-- phone (version 2) -->
<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="address_country" colspan='3' >
<!-- simple hidden start -->
{if !$fields.address_country.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.address_country.value) <= 0}
{assign var="value" value=$fields.address_country.default_value }
{else}
{assign var="value" value=$fields.address_country.value }
{/if} 
<span class="sugar_field" id="{$fields.address_country.name}">{$fields.address_country.value}</span>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Users'}{/capture}
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
<!-- /tab panel main div -->                </div>
</div>
</div>
</div>
</div>
<!--
/*********************************************************************************
* SugarCRM Community Edition is a customer relationship management program developed by
* SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
* SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
* Copyright (C) 2011 - 2014 Salesagility Ltd.
*
* This program is free software; you can redistribute it and/or modify it under
* the terms of the GNU Affero General Public License version 3 as published by the
* Free Software Foundation with the addition of the following permission added
* to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
* IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
* OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
* details.
*
* You should have received a copy of the GNU Affero General Public License along with
* this program; if not, see http://www.gnu.org/licenses or write to the Free
* Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
* 02110-1301 USA.
*
* You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
* SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
*
* The interactive user interfaces in modified source and object code versions
* of this program must display Appropriate Legal Notices, as required under
* Section 5 of the GNU Affero General Public License version 3.
*
* In accordance with Section 7(b) of the GNU Affero General Public License version 3,
* these Appropriate Legal Notices must retain the display of the "Powered by
* SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
* reasonably feasible for  technical reasons, the Appropriate Legal Notices must
* display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
********************************************************************************/
-->
<!-- END METADATA SECTION -->
<div id='email_options'>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="detail view">
<tr>
<th align="left" scope="row" colspan="4">
<h4>{$MOD.LBL_MAIL_OPTIONS_TITLE}</h4>
</th>
</tr>
<tr>
<td align="top" scope="row" width="15%">
{$MOD.LBL_EMAIL|strip_semicolon}:
</td>
<td align="top" width="85%">
{$NEW_EMAIL}
</td>
</tr>
<tr id="email_options_link_type">
<td align="top"  scope="row">
{$MOD.LBL_EMAIL_LINK_TYPE|strip_semicolon}:
</td>
<td >
{$EMAIL_LINK_TYPE}
</td>
</tr>
{if !$HIDE_IF_CAN_USE_DEFAULT_OUTBOUND}
<tr>
<td scope="row" width="15%">
{$MOD.LBL_EMAIL_PROVIDER|strip_semicolon}:
</td>
<td width="35%">
{$mail_smtpserver}
</td>
</tr>
<tr>
<td align="top"  scope="row">
{$MOD.LBL_MAIL_SMTPUSER|strip_semicolon}:
</td>
<td width="35%">
{$mail_smtpuser}
</td>
</tr>
{/if}
</table>
</div>
</div>
<div>
<div id="settings">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="detail view">
<tr>
<th colspan='4' align="left" width="100%" valign="top"><h4><slot>{$MOD.LBL_USER_SETTINGS}</slot></h4></th>
</tr>
<tr>
<td scope="row"><slot>{$MOD.LBL_RECEIVE_NOTIFICATIONS|strip_semicolon}:</slot></td>
<td><slot><input class="checkbox" type="checkbox" disabled {$RECEIVE_NOTIFICATIONS}></slot></td>
<td><slot>{$MOD.LBL_RECEIVE_NOTIFICATIONS_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td scope="row" valign="top"><slot>{$MOD.LBL_REMINDER|strip_semicolon}:</td>
<!--
<td valign="top" nowrap><slot>{include file="modules/Meetings/tpls/reminders.tpl"}</slot></td>
-->
<td valign="top" nowrap><slot>{include file="modules/Reminders/tpls/remindersDefaults.tpl"}</slot></td>
<td ><slot>{$MOD.LBL_REMINDER_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td valign="top" scope="row"><slot>{$MOD.LBL_MAILMERGE|strip_semicolon}:</slot></td>
<td valign="top" nowrap><slot><input tabindex='3' name='mailmerge_on' disabled class="checkbox" type="checkbox" {$MAILMERGE_ON}></slot></td>
<td><slot>{$MOD.LBL_MAILMERGE_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td valign="top" scope="row"><slot>{$MOD.LBL_SETTINGS_URL|strip_semicolon}:</slot></td>
<td valign="top" nowrap><slot>{$SETTINGS_URL}</slot></td>
<td><slot>{$MOD.LBL_SETTINGS_URL_DESC}&nbsp;</slot></td>
</tr>
<tr>
<td scope="row" valign="top"><slot>{$MOD.LBL_EXPORT_DELIMITER|strip_semicolon}:</slot></td>
<td><slot>{$EXPORT_DELIMITER}</slot></td>
<td><slot>{$MOD.LBL_EXPORT_DELIMITER_DESC}</slot></td>
</tr>
<tr>
<td scope="row" valign="top"><slot>{$MOD.LBL_EXPORT_CHARSET|strip_semicolon}:</slot></td>
<td><slot>{$EXPORT_CHARSET_DISPLAY}</slot></td>
<td><slot>{$MOD.LBL_EXPORT_CHARSET_DESC}</slot></td>
</tr>
<tr>
<td scope="row" valign="top"><slot>{$MOD.LBL_USE_REAL_NAMES|strip_semicolon}:</slot></td>
<td><slot><input tabindex='3' name='use_real_names' disabled class="checkbox" type="checkbox" {$USE_REAL_NAMES}></slot></td>
<td><slot>{$MOD.LBL_USE_REAL_NAMES_DESC}</slot></td>
</tr>
{if $DISPLAY_EXTERNAL_AUTH}
<tr>
<td scope="row" valign="top"><slot>{$EXTERNAL_AUTH_CLASS|strip_semicolon}:</slot></td>
<td valign="top" nowrap><slot><input id="external_auth_only" name="external_auth_only" type="checkbox" class="checkbox" {$EXTERNAL_AUTH_ONLY_CHECKED}></slot></td>
<td><slot>{$MOD.LBL_EXTERNAL_AUTH_ONLY} {$EXTERNAL_AUTH_CLASS}</slot></td>
</tr>
{/if}
</table>
</div>
<div id='locale'>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="detail view">
<tr>
<th colspan='4' align="left" width="100%" valign="top">
<h4><slot>{$MOD.LBL_USER_LOCALE}</slot></h4></th>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_DATE_FORMAT|strip_semicolon}:</slot></td>
<td><slot>{$DATEFORMAT}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_DATE_FORMAT_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_TIME_FORMAT|strip_semicolon}:</slot></td>
<td><slot>{$TIMEFORMAT}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_TIME_FORMAT_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_TIMEZONE|strip_semicolon}:</slot></td>
<td nowrap><slot>{$TIMEZONE}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_ZONE_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_CURRENCY|strip_semicolon}:</slot></td>
<td><slot>{$CURRENCY_DISPLAY}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_CURRENCY_TEXT}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_CURRENCY_SIG_DIGITS|strip_semicolon}:</slot></td>
<td><slot>{$CURRENCY_SIG_DIGITS}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_CURRENCY_SIG_DIGITS_DESC}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_NUMBER_GROUPING_SEP|strip_semicolon}:</slot></td>
<td><slot>{$NUM_GRP_SEP}&nbsp;</slot></td>
<td><slot>{$MOD.LBL_NUMBER_GROUPING_SEP_TEXT}&nbsp;</slot></td>
</tr><tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_DECIMAL_SEP|strip_semicolon}:</slot></td>
<td><slot>{$DEC_SEP}&nbsp;</slot></td>
<td><slot></slot>{$MOD.LBL_DECIMAL_SEP_TEXT}&nbsp;</td>
</tr>
</tr><tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_LOCALE_DEFAULT_NAME_FORMAT|strip_semicolon}:</slot></td>
<td><slot>{$NAME_FORMAT}&nbsp;</slot></td>
<td><slot></slot>{$MOD.LBL_LOCALE_NAME_FORMAT_DESC}&nbsp;</td>
</tr>
</table>
</div>
<div id='calendar_options'>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="detail view">
<tr>
<th colspan='4' align="left" width="100%" valign="top"><h4><slot>{$MOD.LBL_CALENDAR_OPTIONS}</slot></h4></th>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_PUBLISH_KEY|strip_semicolon}:</slot></td>
<td width="20%"><slot>{$CALENDAR_PUBLISH_KEY}&nbsp;</slot></td>
<td width="65%"><slot>{$MOD.LBL_CHOOSE_A_KEY}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot><nobr>{$MOD.LBL_YOUR_PUBLISH_URL|strip_semicolon}:</nobr></slot></td>
<td colspan=2>{if $CALENDAR_PUBLISH_KEY}{$CALENDAR_PUBLISH_URL}{else}{$MOD.LBL_NO_KEY}{/if}</td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_SEARCH_URL|strip_semicolon}:</slot></td>
<td colspan=2><slot>{if $CALENDAR_PUBLISH_KEY}{$CALENDAR_SEARCH_URL}{else}{$MOD.LBL_NO_KEY}{/if}</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_ICAL_PUB_URL|strip_semicolon}: {sugar_help text=$MOD.LBL_ICAL_PUB_URL_HELP}</slot></td>
<td colspan=2><slot>{if $CALENDAR_PUBLISH_KEY}{$CALENDAR_ICAL_URL}{else}{$MOD.LBL_NO_KEY}{/if}</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_FDOW|strip_semicolon}:</slot></td>
<td><slot>{$FDOWDISPLAY}&nbsp;</slot></td>
<td><slot></slot>{$MOD.LBL_FDOW_TEXT}&nbsp;</td>
</tr>
</table>
</div>
<div id='edit_tabs'>
<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="detail view">
<tr>
<th colspan='4' align="left" width="100%" valign="top"><h4><slot>{$MOD.LBL_LAYOUT_OPTIONS}</slot></h4></th>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_USE_GROUP_TABS|strip_semicolon}:</slot></td>
<td><slot><input class="checkbox" type="checkbox" disabled {$USE_GROUP_TABS}></slot></td>
<td><slot>{$MOD.LBL_NAVIGATION_PARADIGM_DESCRIPTION}&nbsp;</slot></td>
</tr>
<tr>
<td width="15%" scope="row"><slot>{$MOD.LBL_SUBPANEL_TABS|strip_semicolon}:</slot></td>
<td><slot><input class="checkbox" type="checkbox" disabled {$SUBPANEL_TABS}></slot></td>
<td><slot>{$MOD.LBL_SUBPANEL_TABS_DESCRIPTION}&nbsp;</slot></td>
</tr>
</table>
</div>
</div>
{if $SHOW_ROLES}
{$ROLE_HTML}
{else}
</div>
{/if}
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
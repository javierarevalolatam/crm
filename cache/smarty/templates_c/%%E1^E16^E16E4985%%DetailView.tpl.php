<?php /* Smarty version 2.6.29, created on 2017-11-25 08:33:25
         compiled from cache/themes/SuiteP/modules/Project/DetailView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_include', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 41, false),array('function', 'sugar_translate', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 74, false),array('function', 'counter', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 104, false),array('function', 'sugar_getimage', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 117, false),array('function', 'sugar_ajax_url', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 366, false),array('modifier', 'strip_semicolon', 'cache/themes/SuiteP/modules/Project/DetailView.tpl', 97, false),)), $this); ?>


<script language="javascript">
    <?php echo '
    SUGAR.util.doWhen(function () {
        return $("#contentTable").length == 0;
    }, SUGAR.themes.actionMenu);
    '; ?>

</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="<?php echo $this->_tpl_vars['module']; ?>
">
<input type="hidden" name="record" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="<?php echo $this->_tpl_vars['offset']; ?>
">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
<?php if (! $this->_tpl_vars['config']['enable_action_menu']): ?>
<div class="buttons">
<input id="edit_button" class="button" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" name="Edit" onclick="var _form = document.getElementById('formDetailView');<?php if ($this->_tpl_vars['IS_TEMPLATE']): ?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='ProjectTemplatesEditView';<?php else: ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='EditView'; <?php endif; ?>;_form.submit();" type="button" value=" <?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
 "/>
<input title="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_KEY']; ?>
" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_LABEL']; ?>
"/>
<input title="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_KEY']; ?>
" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');<?php if ($this->_tpl_vars['IS_TEMPLATE']): ?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
';<?php else: ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
';<?php endif; ?>;_form.submit();" type="button" value="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_LABEL']; ?>
"/>
<input title="<?php echo $this->_tpl_vars['APP']['LBL_VIEW_GANTT_TITLE']; ?>
" class="button" type="button" name="view_gantt" id="view_gantt" value="<?php echo $this->_tpl_vars['APP']['LBL_GANTT_BUTTON_LABEL']; ?>
" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&project_id=<?php echo $this->_tpl_vars['id']; ?>
'" //>
<?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=Project", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif; ?><?php endif; ?>
</div>                    <?php endif; ?>
</form>
</div>
</td>
<td align="right" width="20%"><?php echo $this->_tpl_vars['ADMIN_EDIT']; ?>

<?php echo $this->_tpl_vars['PAGINATION']; ?>

</td>
</tr>
</table>
<?php echo smarty_function_sugar_include(array('include' => $this->_tpl_vars['includes']), $this);?>

<div>

<ul class="nav nav-tabs">
<?php if ($this->_tpl_vars['config']['enable_action_menu']): ?>
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Acciones</a>
<ul class="dropdown-menu">
<li><input id="edit_button" class="button" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" name="Edit" onclick="var _form = document.getElementById('formDetailView');<?php if ($this->_tpl_vars['IS_TEMPLATE']): ?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='ProjectTemplatesEditView';<?php else: ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='EditView'; <?php endif; ?>;_form.submit();" type="button" value=" <?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
 "/></li>
<li><input title="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_KEY']; ?>
" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_LABEL']; ?>
"/></li>
<li><input title="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_KEY']; ?>
" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');<?php if ($this->_tpl_vars['IS_TEMPLATE']): ?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
';<?php else: ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
';<?php endif; ?>;_form.submit();" type="button" value="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_LABEL']; ?>
"/></li>
<li><input title="<?php echo $this->_tpl_vars['APP']['LBL_VIEW_GANTT_TITLE']; ?>
" class="button" type="button" name="view_gantt" id="view_gantt" value="<?php echo $this->_tpl_vars['APP']['LBL_GANTT_BUTTON_LABEL']; ?>
" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&project_id=<?php echo $this->_tpl_vars['id']; ?>
'" //></li>
<li><?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=Project", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif; ?><?php endif; ?></li>
</ul>        </li>
<?php endif; ?>
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
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_PROJECT_INFORMATION','module' => 'Project'), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_NAME','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="name" field="name"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['name']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['name']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['name']['value']; ?>
</span>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATUS','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="status"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['status']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['status']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['status']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['status']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['status']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['status']['options'][$this->_tpl_vars['fields']['status']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DATE_START','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="estimated_start_date"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['estimated_start_date']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>



<?php if (strlen ( $this->_tpl_vars['fields']['estimated_start_date']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['estimated_start_date']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['estimated_start_date']['value']); ?>
<?php endif; ?>
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['estimated_start_date']['name']; ?>
"><?php echo $this->_tpl_vars['value']; ?>
</span>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PRIORITY','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="priority"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['priority']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['priority']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['priority']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['priority']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['priority']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['priority']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['priority']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['priority']['options'][$this->_tpl_vars['fields']['priority']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DATE_END','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="estimated_end_date"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['estimated_end_date']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>



<?php if (strlen ( $this->_tpl_vars['fields']['estimated_end_date']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['estimated_end_date']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['estimated_end_date']['value']); ?>
<?php endif; ?>
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['estimated_end_date']['name']; ?>
"><?php echo $this->_tpl_vars['value']; ?>
</span>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_OVERRIDE_BUSINESS_HOURS','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="bool" field="override_business_hours"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['override_business_hours']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (strval ( $this->_tpl_vars['fields']['override_business_hours']['value'] ) == '1' || strval ( $this->_tpl_vars['fields']['override_business_hours']['value'] ) == 'yes' || strval ( $this->_tpl_vars['fields']['override_business_hours']['value'] ) == 'on'): ?> 
<?php $this->assign('checked', 'checked="checked"'); ?>
<?php else: ?>
<?php $this->assign('checked', ""); ?>
<?php endif; ?>
<input type="checkbox" class="checkbox" name="<?php echo $this->_tpl_vars['fields']['override_business_hours']['name']; ?>
" id="<?php echo $this->_tpl_vars['fields']['override_business_hours']['name']; ?>
" value="$fields.override_business_hours.value" disabled="true" <?php echo $this->_tpl_vars['checked']; ?>
>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="assigned_user_name"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['assigned_user_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<span id="assigned_user_id" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['assigned_user_id']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['assigned_user_name']['value']; ?>
</span>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_AM_PROJECTTEMPLATES_PROJECT_1_FROM_AM_PROJECTTEMPLATES_TITLE','module' => 'Project'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</div>
<!-- /DIV inside  -->
<!-- phone (version 1) -->
<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="am_projecttemplates_project_1_name"  >
<!-- simple hidden start -->
<?php if (! $this->_tpl_vars['fields']['am_projecttemplates_project_1_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['am_projecttemplates_project_1am_projecttemplates_ida']['value'] )): ?>
<?php ob_start(); ?>index.php?module=AM_ProjectTemplates&action=DetailView&record=<?php echo $this->_tpl_vars['fields']['am_projecttemplates_project_1am_projecttemplates_ida']['value']; ?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('detail_url', ob_get_contents());ob_end_clean(); ?>
<a href="<?php echo smarty_function_sugar_ajax_url(array('url' => $this->_tpl_vars['detail_url']), $this);?>
"><?php endif; ?>
<span id="am_projecttemplates_project_1am_projecttemplates_ida" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['am_projecttemplates_project_1am_projecttemplates_ida']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['am_projecttemplates_project_1_name']['value']; ?>
</span>
<?php if (! empty ( $this->_tpl_vars['fields']['am_projecttemplates_project_1am_projecttemplates_ida']['value'] )): ?></a><?php endif; ?>
<?php endif; ?>
<!-- simple hidden finish -->
</div>
<!-- /phone (version 1/2) -->
<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>

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

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){SUGAR.util.buildAccessKeyLabels();});
</script>
<script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>
<?php echo '
<script type="text/javascript">

        var selectTab = function(tab) {
            $(\'#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').hide();
            $(\'#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').eq(tab).show().addClass(\'active\').addClass(\'in\');
        };

        var selectTabOnError = function(tab) {
            selectTab(tab);
            $(\'#content ul.nav.nav-tabs li\').removeClass(\'active\');
            $(\'#content ul.nav.nav-tabs li a\').css(\'color\', \'\');

            $(\'#content ul.nav.nav-tabs li\').eq(tab).find(\'a\').first().css(\'color\', \'red\');
            $(\'#content ul.nav.nav-tabs li\').eq(tab).addClass(\'active\');

        };

        var selectTabOnErrorInputHandle = function(inputHandle) {
            var tab = $(inputHandle).closest(\'.tab-pane-NOBOOTSTRAPTOGGLER\').attr(\'id\').match(/^detailpanel_(.*)$/)[1];
            selectTabOnError(tab);
        };


        $(function(){
            $(\'#content ul.nav.nav-tabs li\').click(function(e){
                if(typeof $(this).find(\'a\').first().attr(\'id\') != \'undefined\') {
                    var tab = parseInt($(this).find(\'a\').first().attr(\'id\').match(/^tab(.)*$/)[1]);
                    selectTab(tab);
                }
            });
            $(\'#content ul.nav.nav-tabs li.active\').each(function(e){
                if(typeof $(this).find(\'a\').first().attr(\'id\') != \'undefined\') {
                    var tab = parseInt($(this).find(\'a\').first().attr(\'id\').match(/^tab(.)*$/)[1]);
                    selectTab(tab);
                }
            });
        });

    </script>
'; ?>
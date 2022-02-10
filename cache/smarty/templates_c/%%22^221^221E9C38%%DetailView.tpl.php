<?php /* Smarty version 2.6.29, created on 2016-11-17 21:09:50
         compiled from cache/themes/SuiteP/modules/KReports/DetailView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_include', 'cache/themes/SuiteP/modules/KReports/DetailView.tpl', 37, false),)), $this); ?>


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
<?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=KReports", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
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
<li><?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=KReports", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
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
</div>
</div>

<script type="text/javascript" src="vendor/extjs6/ext-all.js"></script>
<link rel="stylesheet" type="text/css" href="custom/k/css/spicecrm-theme/resources/spicecrm-theme-all-debug.css" />
<link rel="stylesheet" type="text/css" href="custom/k/css/ext6_override.css">
<!--script type="text/javascript" src="custom/k/extjs6/resources/theme-gray/theme-gray-debug.js"></script-->
<script type="text/javascript" src="modules/KReports/js/KReporterCommon.js?<?php rand(100, 900) ?>"></script>
<script type="text/javascript" src="modules/KReports/js/KReporterViewer.js?<?php rand(100, 900) ?>"></script>
<div style="width: 100%" id="kreportviewer"></div>
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
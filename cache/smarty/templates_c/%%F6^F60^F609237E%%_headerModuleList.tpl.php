<?php /* Smarty version 2.6.29, created on 2017-05-09 12:54:23
         compiled from themes/SuiteP/tpls/_headerModuleList.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_link', 'themes/SuiteP/tpls/_headerModuleList.tpl', 57, false),array('function', 'sugar_getimagepath', 'themes/SuiteP/tpls/_headerModuleList.tpl', 89, false),array('function', 'counter', 'themes/SuiteP/tpls/_headerModuleList.tpl', 176, false),)), $this); ?>
<!--Start Responsive Top Navigation Menu -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php?module=Home&action=index"><?php echo $this->_tpl_vars['APP']['LBL_BROWSER_TITLE']; ?>
</a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mobile_menu">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div id="mobileheader">
                <div id="modulelinks">
                    <?php $_from = $this->_tpl_vars['moduleTopMenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['moduleList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['moduleList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['module']):
        $this->_foreach['moduleList']['iteration']++;
?>
                        <?php if ($this->_tpl_vars['name'] == $this->_tpl_vars['MODULE_TAB']): ?>
                            <span class="modulename" data-toggle="dropdown"
                                  aria-expanded="false"><?php echo smarty_function_sugar_link(array('id' => "moduleTab_".($this->_tpl_vars['name']),'module' => $this->_tpl_vars['name'],'data' => $this->_tpl_vars['module']), $this);?>

                            </span>

                                <ul class="dropdown-menu" role="menu">
                                <?php if ($this->_tpl_vars['name'] != 'Home'): ?>
                                    <?php if (count ( $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']] ) > 0): ?>
                                       <ul>
                                           <?php $_from = $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
                                               <?php if ($this->_tpl_vars['item']['URL'] == "-"): ?>
                                                   <li class="mobile-action"><a></a><span>&nbsp;</span></li>
                                               <?php else: ?>
                                                   <li class="mobile-action"><a href="<?php echo $this->_tpl_vars['item']['URL']; ?>
"><?php echo $this->_tpl_vars['item']['LABEL']; ?>
</a></li>
                                               <?php endif; ?>
                                           <?php endforeach; endif; unset($_from); ?>
                                       </ul>
                                    <?php else: ?>
                                        <li class="mobile-action"><a><?php echo $this->_tpl_vars['APP']['LBL_NO_SHORTCUT_MENU']; ?>
</a></li>
                                    <?php endif; ?>
                            <?php endif; ?>

                                    <?php if (count ( $this->_tpl_vars['recentRecords'] ) > 0): ?>
                                        <li class="recent-links-title" role="presentation">
                                            <a><strong><?php echo $this->_tpl_vars['APP']['LBL_LAST_VIEWED']; ?>
</strong></a>
                                        </li>
                                        <li role="presentation">
                                            <ul class="recent-list">
                                                <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                    <?php if ($this->_foreach['lastViewed']['iteration'] < 4): ?>                                                         <li class="recentlinks" role="presentation">
                                                            <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                               accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                               href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-detail">
                                                                <img src="<?php echo smarty_function_sugar_getimagepath(array('directory' => 'sidebar/modules','file_name' => $this->_tpl_vars['item']['module_name'],'file_extension' => 'svg','file' => "'sidebar/modules/'.".($this->_tpl_vars['item']).".module_name.'.svg'"), $this);?>
"><span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                            </a>
                                                            <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-edit"><span class=" glyphicon glyphicon-pencil"></a>
                                                        </li>
                                                    <?php endif; ?>
                                                <?php endforeach; endif; unset($_from); ?>
                                            </ul>
                                         </li>
                                    <?php endif; ?>

                                    <?php if (count ( $this->_tpl_vars['favoriteRecords'] ) > 0): ?>
                                        <li class="favorite-links-title" role="presentation">
                                            <a><strong><?php echo $this->_tpl_vars['APP']['LBL_FAVORITES']; ?>
</strong></a>
                                        </li>
                                        <li>
                                            <ul class="favorite-list">
                                                <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                    <?php if ($this->_foreach['lastViewed']['iteration'] < 4): ?>                                                         <li class="favoritelinks" role="presentation">
                                                            <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                               accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                               href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
"  class="favorite-links-detail">
                                                                <img src="<?php echo smarty_function_sugar_getimagepath(array('directory' => 'sidebar/modules','file_name' => $this->_tpl_vars['item']['module_name'],'file_extension' => 'svg','file' => "'sidebar/modules/'.".($this->_tpl_vars['item']).".module_name.'.svg'"), $this);?>
"><span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                            </a>
                                                            <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></a>
                                                        </li>
                                                    <?php endif; ?>
                                                <?php endforeach; endif; unset($_from); ?>
                                            </ul>
                                        </li>
                                    <?php endif; ?>
                                </ul>

                        <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </div>

            </div>
        </div>
        <div class="hidden-xs hidden-sm hidden-md hidden-mdlg" id="bs-example-navbar-collapse-1">
            <?php if ($this->_tpl_vars['USE_GROUP_TABS']): ?>
                <ul class="nav navbar-nav">
                    <?php $this->assign('groupSelected', false); ?>
                    <?php $_from = $this->_tpl_vars['moduleTopMenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['moduleList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['moduleList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['module']):
        $this->_foreach['moduleList']['iteration']++;
?>
                        <?php if ($this->_tpl_vars['name'] == $this->_tpl_vars['MODULE_TAB']): ?>
                            <?php if ($this->_tpl_vars['name'] != 'Home'): ?>
                                <li class="topnav">
                                    <span class="currentTabLeft">&nbsp;</span>
                                    <span class="currentTab"><?php echo smarty_function_sugar_link(array('id' => "moduleTab_".($this->_tpl_vars['name']),'module' => $this->_tpl_vars['name'],'data' => $this->_tpl_vars['module']), $this);?>
</span>
                                    <span>&nbsp;</span>



                                                                        <?php $this->assign('foundRecents', false); ?>
                                    <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                        <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name']): ?>
                                            <?php $this->assign('foundRecents', true); ?>
                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>


                                                                        <?php $this->assign('foundFavorits', false); ?>
                                    <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                        <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name']): ?>
                                            <?php $this->assign('foundFavorits', true); ?>
                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    <?php if ($this->_tpl_vars['foundRecents'] || $this->_tpl_vars['foundFavorits'] || count ( $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']] ) > 0): ?>

                                        <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <ul>
                                                    <?php if (count ( $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']] ) > 0): ?>
                                                        <?php $_from = $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
                                                            <?php if ($this->_tpl_vars['item']['URL'] == "-"): ?>
                                                                                                                            <?php else: ?>
                                                                <li><a href="<?php echo $this->_tpl_vars['item']['URL']; ?>
"><span class="topnav-fake-icon"></span><span aria-hidden="true"><?php echo $this->_tpl_vars['item']['LABEL']; ?>
</span></a></li>
                                                            <?php endif; ?>
                                                        <?php endforeach; endif; unset($_from); ?>
                                                    <?php endif; ?>
                                                </ul>
                                            </li>

                                                                                        <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleRecentRecordsTotal','assign' => 'submoduleRecentRecordsTotal','print' => false), $this);?>

                                            <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name'] && $this->_tpl_vars['submoduleRecentRecordsTotal'] == 0): ?>
                                                    <li class="recent-links-title"><a><strong><?php echo $this->_tpl_vars['APP']['LBL_LAST_VIEWED']; ?>
</strong></a></li>
                                                    <?php echo smarty_function_counter(array('name' => 'submoduleRecentRecordsTotal','print' => false), $this);?>

                                                <?php endif; ?>
                                            <?php endforeach; endif; unset($_from); ?>
                                                <li>
                                                    <ul>
                                                                                                                <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleRecentRecords','assign' => 'submoduleRecentRecords','print' => false), $this);?>

                                                        <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                            <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name'] && $this->_tpl_vars['submoduleRecentRecords'] < 3): ?>
                                                                <li class="recentlinks" role="presentation">
                                                                    <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                                       accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                                       href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-detail">
                                                                        <span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                                    </a>
                                                                    <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-edit"><span class=" glyphicon glyphicon-pencil"></a>
                                                                </li>
                                                                <?php echo smarty_function_counter(array('name' => 'submoduleRecentRecords','print' => false), $this);?>

                                                            <?php endif; ?>
                                                        <?php endforeach; endif; unset($_from); ?>
                                                    </ul>
                                                </li>





                                            <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleFavoriteRecordsTotal','assign' => 'submoduleFavoriteRecordsTotal','print' => false), $this);?>

                                            <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name'] && $this->_tpl_vars['submoduleFavoriteRecordsTotal'] == 0): ?>
                                                    <li class="favorite-links-title"><a><strong><?php echo $this->_tpl_vars['APP']['LBL_FAVORITES']; ?>
</strong></a></li>
                                                    <?php echo smarty_function_counter(array('name' => 'submoduleFavoriteRecordsTotal','print' => false), $this);?>

                                                <?php endif; ?>
                                            <?php endforeach; endif; unset($_from); ?>
                                            <li>
                                                <ul>
                                                                                                        <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleFavoriteRecords','assign' => 'submoduleFavoriteRecords','print' => false), $this);?>

                                                    <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                        <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['name'] && $this->_tpl_vars['submoduleFavoriteRecords'] < 3): ?>
                                                            <li class="favoritelinks" role="presentation">
                                                                <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                                   accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                                   href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-detail">
                                                                    <span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                                </a>
                                                                <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-edit"><span class=" glyphicon glyphicon-pencil" aria-hidden="true"></a>
                                                            </li>
                                                            <?php echo smarty_function_counter(array('name' => 'submoduleFavoriteRecords','print' => false), $this);?>

                                                        <?php endif; ?>
                                                    <?php endforeach; endif; unset($_from); ?>
                                                </ul>
                                            </li>
                                        </ul>

                                    <?php endif; ?>
                                 </li>
                            <?php endif; ?>

                        <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                    <?php $_from = $this->_tpl_vars['groupTabs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['groupList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['groupList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['group'] => $this->_tpl_vars['modules']):
        $this->_foreach['groupList']['iteration']++;
?>
                        <?php ob_start(); ?>parentTab=<?php echo $this->_tpl_vars['group']; ?>
<?php $this->_smarty_vars['capture']['extraparams'] = ob_get_contents();  $this->assign('extraparams', ob_get_contents());ob_end_clean(); ?>
                        <li class="topnav">
                            <span class="notCurrentTabLeft">&nbsp;</span><span class="notCurrentTab">
                            <a href="#" id="grouptab_<?php echo ($this->_foreach['groupList']['iteration']-1); ?>
" class="dropdown-toggle"
                               data-toggle="dropdown"><?php echo $this->_tpl_vars['group']; ?>
</a>
                            <span class="notCurrentTabRight">&nbsp;</span>
                            <ul class="dropdown-menu" role="menu" <?php if (($this->_foreach['groupList']['iteration'] == $this->_foreach['groupList']['total'])): ?> class="All"<?php endif; ?>>
                                <?php $_from = $this->_tpl_vars['modules']['modules']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['modulekey'] => $this->_tpl_vars['module']):
?>
                                    <li>
                                        <?php ob_start(); ?>moduleTab_<?php echo ($this->_foreach['moduleList']['iteration']-1); ?>
_<?php echo $this->_tpl_vars['module']; ?>
<?php $this->_smarty_vars['capture']['moduleTabId'] = ob_get_contents();  $this->assign('moduleTabId', ob_get_contents());ob_end_clean(); ?>
                                        <?php echo smarty_function_sugar_link(array('id' => $this->_tpl_vars['moduleTabId'],'module' => $this->_tpl_vars['modulekey'],'data' => $this->_tpl_vars['module'],'extraparams' => $this->_tpl_vars['extraparams']), $this);?>

                                    </li>
                                <?php endforeach; endif; unset($_from); ?>
                                <?php $_from = $this->_tpl_vars['modules']['extra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['submodule'] => $this->_tpl_vars['submodulename']):
?>
                                    <li>
                                        <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['submodule'],'link_only' => 1,'extraparams' => $this->_tpl_vars['extraparams']), $this);?>
"><?php echo $this->_tpl_vars['submodulename']; ?>
</a>
                                    </li>
                                <?php endforeach; endif; unset($_from); ?>
                            </ul>
                        </li>
                    <?php endforeach; endif; unset($_from); ?>
                </ul>
            <?php else: ?>

                <ul class="nav navbar-nav navbar-horizontal-fluid">
                    <?php $_from = $this->_tpl_vars['groupTabs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['groupList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['groupList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['group'] => $this->_tpl_vars['modules']):
        $this->_foreach['groupList']['iteration']++;
?>
                        <?php ob_start(); ?>parentTab=<?php echo $this->_tpl_vars['group']; ?>
<?php $this->_smarty_vars['capture']['extraparams'] = ob_get_contents();  $this->assign('extraparams', ob_get_contents());ob_end_clean(); ?>
                    <?php endforeach; endif; unset($_from); ?>

                    <!--nav items with actions -->
                    <?php $_from = $this->_tpl_vars['modules']['modules']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['submodule'] => $this->_tpl_vars['submodulename']):
?>
                        <?php if ($this->_tpl_vars['submodule'] != 'Home'): ?>
                            <li class="topnav with-actions">
                                <span class="notCurrentTabLeft">&nbsp;</span>
                                <span class="dropdown-toggle headerlinks notCurrentTab"> <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['submodule'],'link_only' => 1,'extraparams' => $this->_tpl_vars['extraparams']), $this);?>
"><?php echo $this->_tpl_vars['submodulename']; ?>
</a> </span>
                                <span class="notCurrentTabRight">&nbsp;</span>
                                <ul class="dropdown-menu" role="menu">
                                                                        <li>
                                        <ul>
                                            <?php if (count ( $this->_tpl_vars['shortcutTopMenu'] ) > 0): ?>
                                                <?php $_from = $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['submodule']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
                                                    <?php if ($this->_tpl_vars['item']['URL'] == "-"): ?>
                                                                                                            <?php else: ?>
                                                        <li><a href="<?php echo $this->_tpl_vars['item']['URL']; ?>
"><span class="topnav-fake-icon"></span><span aria-hidden="true"><?php echo $this->_tpl_vars['item']['LABEL']; ?>
</span></a></li>
                                                    <?php endif; ?>
                                                <?php endforeach; endif; unset($_from); ?>
                                            <?php endif; ?>
                                        </ul>
                                    </li>
                                                                        <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleRecentRecordsTotal','assign' => 'submoduleRecentRecordsTotal','print' => false), $this);?>

                                    <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                        <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['submodule'] && $this->_tpl_vars['submoduleRecentRecordsTotal'] == 0): ?>
                                            <li class="recent-links-title"><a><strong><?php echo $this->_tpl_vars['APP']['LBL_LAST_VIEWED']; ?>
</strong></a></li>
                                            <?php echo smarty_function_counter(array('name' => 'submoduleRecentRecordsTotal','print' => false), $this);?>

                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    <li>
                                        <ul>
                                                                                        <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleRecentRecords','assign' => 'submoduleRecentRecords','print' => false), $this);?>

                                            <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                                <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['submodule'] && $this->_tpl_vars['submoduleRecentRecords'] < 3): ?>
                                                    <li class="recentlinks" role="presentation">
                                                        <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                           accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                           href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-detail">
                                                            <span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                        </a>
                                                        <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-edit"><span class=" glyphicon glyphicon-pencil"></a>
                                                    </li>
                                                    <?php echo smarty_function_counter(array('name' => 'submoduleRecentRecords','print' => false), $this);?>

                                                <?php endif; ?>
                                            <?php endforeach; endif; unset($_from); ?>
                                        </ul>
                                    </li>
                                                                        <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleFavoriteRecordsTotal','assign' => 'submoduleFavoriteRecordsTotal','print' => false), $this);?>

                                    <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                        <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['submodule'] && $this->_tpl_vars['submoduleFavoriteRecordsTotal'] == 0): ?>
                                            <li class="favorite-links-title"><a><strong><?php echo $this->_tpl_vars['APP']['LBL_FAVORITES']; ?>
</strong></a></li>
                                            <?php echo smarty_function_counter(array('name' => 'submoduleFavoriteRecordsTotal','print' => false), $this);?>

                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    <li>
                                        <ul>
                                                                                <?php echo smarty_function_counter(array('start' => 0,'name' => 'submoduleFavoriteRecords','assign' => 'submoduleFavoriteRecords','print' => false), $this);?>

                                        <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                                            <?php if ($this->_tpl_vars['item']['module_name'] == $this->_tpl_vars['submodule'] && $this->_tpl_vars['submoduleFavoriteRecords'] < 3): ?>
                                                <li class="favoritelinks" role="presentation">
                                                    <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
"
                                                       accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
"
                                                       href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-detail">
                                                        <span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                                    </a>
                                                    <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'EditView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-edit"><span class=" glyphicon glyphicon-pencil" aria-hidden="true"></a>
                                                </li>
                                                <?php echo smarty_function_counter(array('name' => 'submoduleFavoriteRecords','print' => false), $this);?>

                                            <?php endif; ?>
                                        <?php endforeach; endif; unset($_from); ?>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                    <li class="topnav overflow-toggle-menu">
                        <span class="notCurrentTabLeft">&nbsp;</span>
                        <span class="dropdown-toggle headerlinks notCurrentTab"><a href="#"><?php echo $this->_tpl_vars['APP']['LBL_MORE']; ?>
</a></span>
                        <span class="notCurrentTabRight">&nbsp;</span>
                        <ul id="overflow-menu" class="dropdown-menu" role="menu">
                            <!--nav items without actions -->
                            <?php $_from = $this->_tpl_vars['modules']['extra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['submodule'] => $this->_tpl_vars['submodulename']):
?>
                                <li class="topnav without-actions">
                                    <span class=" notCurrentTab"> <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['submodule'],'link_only' => 1,'extraparams' => $this->_tpl_vars['extraparams']), $this);?>
"><?php echo $this->_tpl_vars['submodulename']; ?>
</a> </span>
                                </li>
                            <?php endforeach; endif; unset($_from); ?>
                        </ul>
                    </li>
                </ul>
                <div class="hidden hidden-actions"></div>

                <?php echo '
                    <script>
                        var windowResize = function() {
                            // reset navbar
                            var $navCollapsedItems = $(\'ul#overflow-menu > li.with-actions\');
                            if(typeof $navCollapsedItems !== "undefined") {
                                $($navCollapsedItems).each(function() {
                                    $(this).addClass(\'topnav\');
                                    $(this).insertBefore(\'.overflow-toggle-menu\');
                                });
                            }



                            var $navItemMore = $(\'.navbar-horizontal-fluid > li.overflow-toggle-menu\'),
                                    $navItems = $(\'.navbar-horizontal-fluid > li.with-actions\'),
                                    navItemMoreWidth = navItemWidth = $navItemMore.width(),
                                    windowWidth = $(window).width() - ($(window).width()  * 0.55),
                                    navItemMoreLeft, offset, navOverflowWidth;

                            $navItems.each(function() {
                                navItemWidth += $(this).width();
                            });

                            // Remove nav items that are cause the right hand nav-bar items to wrap
                            while (navItemWidth > windowWidth) {
                                navItemWidth -= $navItems.last().width();
                                $navItems.last().removeClass(\'topnav\');
                                $navItems.last().prependTo(\'#overflow-menu\');
                                $navItems.splice(-1,1);
                            }

                            navItemMoreLeft = $(\'.navbar-horizontal-fluid .overflow-toggle-menu\').offset().left;
                            navOverflowWidth = $(\'#overflow-menu\').width();
                            offset = navItemMoreLeft + navItemMoreWidth - navOverflowWidth;
                        };
                        $(window).resize(windowResize);
                        windowResize();
                    </script>
                '; ?>


            <?php endif; ?>
            <div id="globalLinks" class="dropdown nav navbar-nav navbar-right globalLinks-desktop">
                <li id="usermenu" class="user-dropdown" aria-expanded="false">
                    <a>
                        <span class="user_icon"> </span> <?php echo $this->_tpl_vars['CURRENT_USER']; ?>

                        <span class="caret"></span>
                    </a>
                </li>

                <ul class="dropdown-menu user-dropdown" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation">
                        <a href='index.php?module=Users&action=EditView&record=<?php echo $this->_tpl_vars['CURRENT_USER_ID']; ?>
'>
                            <?php echo $this->_tpl_vars['APP']['LBL_PROFILE']; ?>

                        </a>
                    </li>
                    <?php $_from = $this->_tpl_vars['GCLS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['gcl'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['gcl']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['gcl_key'] => $this->_tpl_vars['GCL']):
        $this->_foreach['gcl']['iteration']++;
?>
                        <li role="presentation">
                            <a id="<?php echo $this->_tpl_vars['gcl_key']; ?>
_link"
                               href="<?php echo $this->_tpl_vars['GCL']['URL']; ?>
"<?php if (! empty ( $this->_tpl_vars['GCL']['ONCLICK'] )): ?> onclick="<?php echo $this->_tpl_vars['GCL']['ONCLICK']; ?>
"<?php endif; ?>><?php echo $this->_tpl_vars['GCL']['LABEL']; ?>
</a>
                        </li>
                    <?php endforeach; endif; unset($_from); ?>
                    <li role="presentation"><a role="menuitem" id="logout_link" href='<?php echo $this->_tpl_vars['LOGOUT_LINK']; ?>
'
                                               class='utilsLink'><?php echo $this->_tpl_vars['LOGOUT_LABEL']; ?>
</a></li>
                </ul>
            </div>


            
        </div>

        <!-- Right side of the main navigation -->
        <div class="mobile-bar" id="bs-example-navbar-collapse-1">
            <div id="globalLinks" class="dropdown nav navbar-nav navbar-right">

                <button id="usermenucollapsed" class="dropdown-toggle btn btn-default " data-toggle="dropdown"
                        aria-expanded="true">
                </button>
                <ul class="dropdown-menu user-dropdown" role="menu" aria-labelledby="dropdownMenu2">
                    <li role="presentation">
                        <a href='index.php?module=Users&action=EditView&record=<?php echo $this->_tpl_vars['CURRENT_USER_ID']; ?>
'>
                            <?php echo $this->_tpl_vars['APP']['LBL_PROFILE']; ?>

                        </a>
                    </li>
                    <?php $_from = $this->_tpl_vars['GCLS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['gcl'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['gcl']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['gcl_key'] => $this->_tpl_vars['GCL']):
        $this->_foreach['gcl']['iteration']++;
?>
                        <li role="presentation">
                            <a id="<?php echo $this->_tpl_vars['gcl_key']; ?>
_link"
                               href="<?php echo $this->_tpl_vars['GCL']['URL']; ?>
"<?php if (! empty ( $this->_tpl_vars['GCL']['ONCLICK'] )): ?> onclick="<?php echo $this->_tpl_vars['GCL']['ONCLICK']; ?>
"<?php endif; ?>><?php echo $this->_tpl_vars['GCL']['LABEL']; ?>
</a>
                        </li>
                    <?php endforeach; endif; unset($_from); ?>
                    <li role="presentation"><a role="menuitem" id="logout_link" href='<?php echo $this->_tpl_vars['LOGOUT_LINK']; ?>
'
                                               class='utilsLink'><?php echo $this->_tpl_vars['LOGOUT_LABEL']; ?>
</a></li>
                </ul>
            </div>
            <div id="desktop_notifications" class="dropdown nav navbar-nav navbar-right">
                <button class="alertsButton dropdown-toggle" data-toggle="dropdown"
                        aria-expanded="false">
                    <span class="alert_count hidden">0</span>
                </button>
                <div id="alerts" class="dropdown-menu" role="menu"><?php echo $this->_tpl_vars['APP']['LBL_EMAIL_ERROR_VIEW_RAW_SOURCE']; ?>
</div>
            </div>
            <div id="search" class="dropdown nav navbar-nav navbar-right">
                <button id="searchbutton" class="dropdown-toggle btn btn-default" data-toggle="dropdown" aria-expanded="true">
                    <!--<span class="glyphicon glyphicon-search"> </span>-->Search
                </button>
                <div class="dropdown-menu" role="menu" aria-labelledby="searchbutton">
                    <form id="searchformdropdown" name='UnifiedSearch' action='index.php'
                          onsubmit='return SUGAR.unifiedSearchAdvanced.checkUsaAdvanced()'>
                        <input type="hidden" class="form-control" name="action" value="UnifiedSearch">
                        <input type="hidden" class="form-control" name="module" value="Home">
                        <input type="hidden" class="form-control" name="search_form" value="false">
                        <input type="hidden" class="form-control" name="advanced" value="false">
                        <div class="input-group">
                            <input type="text" class="form-control" name="query_string" id="query_string"
                                   placeholder="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH']; ?>
..." value="<?php echo $this->_tpl_vars['SEARCH']; ?>
"/>
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default"><!--<span class="glyphicon glyphicon-search"
                                                                                    aria-hidden="true"></span>-->Search</button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
            <form id="searchform" class="navbar-form navbar-right" name='UnifiedSearch' action='index.php'
                  onsubmit='return SUGAR.unifiedSearchAdvanced.checkUsaAdvanced()'>
                <input type="hidden" class="form-control" name="action" value="UnifiedSearch">
                <input type="hidden" class="form-control" name="module" value="Home">
                <input type="hidden" class="form-control" name="search_form" value="false">
                <input type="hidden" class="form-control" name="advanced" value="false">
                <div class="input-group">
                    <input type="text" class="form-control" name="query_string" id="query_string"
                           placeholder="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH']; ?>
..." value="<?php echo $this->_tpl_vars['SEARCH']; ?>
"/>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><!--<span class="glyphicon glyphicon-search"
                                                                            aria-hidden="true"></span>-->Search</button>
                    </span>
                </div>
            </form>
            <div id="quickcreatetop" class="create dropdown nav navbar-nav navbar-right">
                <a class="dropdown-toggle" aria-expanded="false">
                    <?php echo $this->_tpl_vars['APP']['LBL_CREATE_BUTTON_LABEL']; ?>

                </a>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="index.php?module=Accounts&action=EditView&return_module=Accounts&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_ACCOUNT']; ?>
</a>
                    </li>
                    <li>
                        <a href="index.php?module=Contacts&action=EditView&return_module=Contacts&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_CONTACT']; ?>
</a>
                    </li>
                    <li>
                        <a href="index.php?module=Opportunities&action=EditView&return_module=Opportunities&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_OPPORTUNITY']; ?>
</a>
                    </li>
                    <li>
                        <a href="index.php?module=Leads&action=EditView&return_module=Leads&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_LEAD']; ?>
</a>
                    </li>
                    <li>
                        <a href="index.php?module=Documents&action=EditView&return_module=Documents&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_DOCUMENT']; ?>
</a>
                    </li>
                    <li>
                        <a href="index.php?module=Calls&action=EditView&return_module=Calls&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_CALL']; ?>
</a>
                    </li>
                    <li class="last">
                        <a href="index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView"><?php echo $this->_tpl_vars['APP']['LBL_QUICK_TASK']; ?>
</a>
                    </li>
                </ul>
            </div>
        </div>


        <div class="collapse navbar-collapse" id="mobile_menu">
            <?php $_from = $this->_tpl_vars['groupTabs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['groupList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['groupList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['group'] => $this->_tpl_vars['modules']):
        $this->_foreach['groupList']['iteration']++;
?>
                <?php if (($this->_foreach['groupList']['iteration'] == $this->_foreach['groupList']['total'])): ?>
                    <?php ob_start(); ?>parentTab=<?php echo $this->_tpl_vars['group']; ?>
<?php $this->_smarty_vars['capture']['extraparams'] = ob_get_contents();  $this->assign('extraparams', ob_get_contents());ob_end_clean(); ?>
                    <?php $_from = $this->_tpl_vars['modules']['modules']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['modulekey'] => $this->_tpl_vars['module']):
?>
                        <?php if ($this->_tpl_vars['modulekey'] != 'Home' && $this->_tpl_vars['modulekey'] != 'Calendar'): ?>
                            <li style="float:right;">
                                <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['modulekey'],'action' => 'EditView','link_only' => 1), $this);?>
"><span
                                            class="glyphicon glyphicon-plus"></span></a>
                            </li>
                        <?php endif; ?>
                        <li>
                            <?php ob_start(); ?>moduleTab_<?php echo ($this->_foreach['moduleList']['iteration']-1); ?>
_<?php echo $this->_tpl_vars['module']; ?>
<?php $this->_smarty_vars['capture']['moduleTabId'] = ob_get_contents();  $this->assign('moduleTabId', ob_get_contents());ob_end_clean(); ?>
                            <?php echo smarty_function_sugar_link(array('id' => $this->_tpl_vars['moduleTabId'],'module' => $this->_tpl_vars['modulekey'],'data' => $this->_tpl_vars['module'],'extraparams' => $this->_tpl_vars['extraparams']), $this);?>

                        </li>
                    <?php endforeach; endif; unset($_from); ?>
                    <?php $_from = $this->_tpl_vars['modules']['extra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['submodule'] => $this->_tpl_vars['submodulename']):
?>
                        <li style="float:right;">
                            <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['modulekey'],'action' => 'EditView','link_only' => 1), $this);?>
"><span
                                        class="glyphicon glyphicon-plus"></span></a>
                        </li>
                        <li>
                            <a href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['submodule'],'link_only' => 1,'extraparams' => $this->_tpl_vars['extraparams']), $this);?>
"><?php echo $this->_tpl_vars['submodulename']; ?>
</a>
                        </li>
                    <?php endforeach; endif; unset($_from); ?>
                <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?>            
        </div>
</nav>
<!--End Responsive Top Navigation Menu -->
<?php if ($this->_tpl_vars['THEME_CONFIG']['display_sidebar']): ?>
    <!--Start Page Container and Responsive Sidebar -->
    <div id='sidebar_container' class="container-fluid">

        <a id="buttontoggle"><span></span></a>
                
        <!--<div class="row">-->
            <!--<div <?php if ($_COOKIE['sidebartoggle'] == 'collapsed'): ?>style="display:none"<?php endif; ?>
                 class="col-sm-3 col-md-2 sidebar">-->
             <div <?php if ($_COOKIE['sidebartoggle'] == 'collapsed'): ?>style="display:none"<?php endif; ?>
             class="sidebar">
                
                <div id="actionMenuSidebar">
                    <?php $_from = $this->_tpl_vars['moduleTopMenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['moduleList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['moduleList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['module']):
        $this->_foreach['moduleList']['iteration']++;
?>
                        <?php if ($this->_tpl_vars['name'] == $this->_tpl_vars['MODULE_TAB']): ?>
                            <ul>
                                <?php if (count ( $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']] ) > 0): ?>
                                    <h2 class="recent_h3"><?php echo $this->_tpl_vars['APP']['LBL_LINK_ACTIONS']; ?>
</h2>
                                    <?php $_from = $this->_tpl_vars['shortcutTopMenu'][$this->_tpl_vars['name']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
                                        <?php if ($this->_tpl_vars['item']['URL'] == "-"): ?>
                                            <li><a></a><span>&nbsp;</span></li>
                                        <?php else: ?>
                                            <li class="actionmenulinks" role="presentation">
                                                <a href="<?php echo $this->_tpl_vars['item']['URL']; ?>
" >
                                                    <div class="side-bar-<?php echo $this->_tpl_vars['item']['MODULE_NAME']; ?>
 side-bar-action-icon"></div>
                                                    <div class="actionmenulink"><?php echo $this->_tpl_vars['item']['LABEL']; ?>
</div>
                                                </a>
                                            </li>
                                        <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                <?php endif; ?>
                            </ul>
                        <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </div>
                
                <div id="recentlyViewedSidebar">
                <?php if (count ( $this->_tpl_vars['recentRecords'] ) > 0): ?>
                    <h2 class="recent_h3"><?php echo $this->_tpl_vars['APP']['LBL_LAST_VIEWED']; ?>
</h2>
                <?php endif; ?>
                    <ul class="nav nav-pills nav-stacked">
                        <?php $_from = $this->_tpl_vars['recentRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                            <?php if (($this->_foreach['lastViewed']['iteration']-1) < 5): ?>
                            <div class="recently_viewed_link_container_sidebar">
                                <li class="recentlinks" role="presentation">
                                    <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
" accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
" href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['item_id'],'link_only' => 1), $this);?>
" class="recent-links-detail">
                                        <img src="<?php echo smarty_function_sugar_getimagepath(array('directory' => 'sidebar/modules','file_name' => $this->_tpl_vars['item']['module_name'],'file_extension' => 'svg','file' => "'sidebar/modules/'.".($this->_tpl_vars['item']).".module_name.\".svg\""), $this);?>
"/><span><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                    </a>
                                </li>
                            </div>
                            <?php endif; ?>
                        <?php endforeach; endif; unset($_from); ?>
                    </ul>
                </div>
     
                <div id="favoritesSidebar">
                <?php if (count ( $this->_tpl_vars['favoriteRecords'] ) > 0): ?>
                    <h2 class="recent_h3"><?php echo $this->_tpl_vars['APP']['LBL_FAVORITES']; ?>
</h2>
                <?php endif; ?>
                    <ul class="nav nav-pills nav-stacked">
                        <?php $_from = $this->_tpl_vars['favoriteRecords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['lastViewed'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['lastViewed']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['lastViewed']['iteration']++;
?>
                            <?php if (($this->_foreach['lastViewed']['iteration']-1) < 5): ?>
                            <div class="recently_viewed_link_container_sidebar">
                                <li class="recentlinks" role="presentation">
                                    <a title="<?php echo $this->_tpl_vars['item']['module_name']; ?>
" accessKey="<?php echo $this->_foreach['lastViewed']['iteration']; ?>
" href="<?php echo smarty_function_sugar_link(array('module' => $this->_tpl_vars['item']['module_name'],'action' => 'DetailView','record' => $this->_tpl_vars['item']['id'],'link_only' => 1), $this);?>
" class="favorite-links-detail">
                                        <img src="<?php echo smarty_function_sugar_getimagepath(array('directory' => 'sidebar/modules','file_name' => $this->_tpl_vars['item']['module_name'],'file_extension' => 'svg','file' => "'sidebar/modules/'.".($this->_tpl_vars['item']).".module_name.\".svg\""), $this);?>
"/><span aria-hidden="true"><?php echo $this->_tpl_vars['item']['item_summary_short']; ?>
</span>
                                    </a>
                                </li>
                            </div>
                            <?php endif; ?>
                        <?php endforeach; endif; unset($_from); ?>
                    </ul>
                </div>
            </div>
        <!--</div>-->
    </div>
    <!--End Responsive Sidebar -->
<?php endif; ?>
<!--Start Page content -->
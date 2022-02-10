<?php /* Smarty version 2.6.29, created on 2017-05-09 13:24:12
         compiled from include/MySugar/tpls/dashletsSearchResults.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'counter', 'include/MySugar/tpls/dashletsSearchResults.tpl', 46, false),)), $this); ?>
<h4><?php echo $this->_tpl_vars['lblSearchResults']; ?>
 - <i><?php echo $this->_tpl_vars['searchString']; ?>
</i>:</h4>
<hr>
<?php if (count ( $this->_tpl_vars['dashlets'] )): ?>
<h3><?php echo $this->_tpl_vars['searchCategoryString']; ?>
</h3>
<table width="95%">
	<?php echo smarty_function_counter(array('assign' => 'rowCounter','start' => 0,'print' => false), $this);?>

	<?php $_from = $this->_tpl_vars['dashlets']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['module']):
?>
	<?php if ($this->_tpl_vars['rowCounter'] % 2 == 0): ?>
	<tr>
	<?php endif; ?>
		<td width="50%" align="left"><a href="javascript:void(0)" onclick="<?php echo $this->_tpl_vars['module']['onclick']; ?>
"><?php echo $this->_tpl_vars['module']['icon']; ?>
</a>&nbsp;<a class="mbLBLL" href="#" onclick="<?php echo $this->_tpl_vars['module']['onclick']; ?>
"><?php echo $this->_tpl_vars['module']['title']; ?>
</a><br /></td>
	<?php if ($this->_tpl_vars['rowCounter'] % 2 == 1): ?>
	</tr>
	<?php endif; ?>
	<?php echo smarty_function_counter(array(), $this);?>

	<?php endforeach; endif; unset($_from); ?>
</table>
<?php endif; ?>
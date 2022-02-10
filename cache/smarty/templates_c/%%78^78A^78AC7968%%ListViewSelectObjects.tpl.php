<?php /* Smarty version 2.6.29, created on 2017-05-09 13:26:17
         compiled from themes/SuiteP/include/ListView/ListViewSelectObjects.tpl */ ?>
<label style='<?php echo $this->_tpl_vars['DISPLAY_STYLE']; ?>
' id='selectedRecordsTop'>
    <span id="selectedRecordsTopLabel"><?php echo $this->_tpl_vars['APP']['LBL_LISTVIEW_SELECTED_OBJECTS']; ?>
</span><span id="selectedRecordsTopValue"><?php echo $this->_tpl_vars['TOTAL_ITEMS_SELECTED']; ?>
</span>
    <input type='hidden' id='selectCountTop' name='selectCount[]' value='<?php echo $this->_tpl_vars['TOTAL_ITEMS_SELECTED']; ?>
' />
</label>
<script>
<?php echo '
    $(document).ready(function () {
        function update_selectedRecordsTopValue() {
            $(\'#selectedRecordsTopValue\').html(sugarListView.get_num_selected())
        }
        setInterval(update_selectedRecordsTopValue, 100);
    });
'; ?>

</script>
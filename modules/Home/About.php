<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}
/**
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2016 SalesAgility Ltd.
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
 */
include_once 'suitecrm_version.php';
global $sugar_config, $mod_strings;

?>
<div class="about" id="about_header">
    <h1><img src="include/images/suite_logo.png" alt="SuiteCRM"></h1>
    <br>
    <b>
        <?php echo $mod_strings['LBL_VERSION'].' '.$suitecrm_version;
        if (is_file('custom_version.php')) {
            include 'custom_version.php';
            echo '&nbsp;&nbsp;&nbsp;'.$custom_version;
        } ?>       
    </b>
    <p>Sugar <?php echo $mod_strings['LBL_VERSION'].' '.$sugar_version.' ('.$mod_strings['LBL_BUILD'].' '.$sugar_build.')'; ?></p>
    <p>Framework: TS Talent Expressions Ver. 5.0.18</p>
    <hr/>
    <h1>Versi&oacute;n fork por <a href="http://tstalent.net" target="_blank"><strong>TS TALENT SOLUCIONES, C.A.</strong></a>, basado en <?php echo $mod_strings['LBL_CONTRIBUTOR_SUITECRM']; ?></h1>
    <p style="text-align:justify;">Esta instalaci&oacute;n es una adaptaci&oacute;n del producto SUITE CRM basado a su vez en SUGARCRM (Community Edition - http://www.sugarcrm.com) realizado por TS Talent Soluciones bajo las condiciones de la licencia AGPL v3.0 del licenciamiento original de SugarCRM Inc.</p><br/>
    <p style=" text-align:justify">TS Talent incorpora varios m&oacute;dulos, plugins y componentes del Fremework TS-Expressins que no infringen las condiciones de la licencia, pero en caso de hacerlo por favor indicarlo al correo <a href="mailto:info@tstalent.net">info@tstalent.net</a>.</p><br/>
<p style="text-align:justify">Esta versi&oacute;n mantiene las condiciones de la licencia original. Se suscribe el correo soporte@tstalent.net para culaquier servicio de soporte de primer nivel, siempre y cuando se tenga licenciada &eacute;sta versi&oacute;n bajo el esquema de soporte TS Talent Support.<br/><br/>Para m&aacute;s informaci&oacute;n visite nuestra p&aacute;gina web: <a href="http://tstalent.net" target="_blank">http://tstalent.net</a>.</p>
    <table id="about_table" class="contentBox">
        <tr>
            <td valign="top" style="padding: 15px 10px 15px 10px;">
                <div class="about_suite">
                    <br>
                    <h3><?php echo $mod_strings['LBL_ABOUT_SUITE']; ?></h3>
                    <ul id="about_menu">
                        <li><?php echo $mod_strings['LBL_ABOUT_SUITE_2']; ?></li>
                        <li>SugarCRM es publicado bajo licencia open source - GPL3</li>
                        <li>El Framework <strong>TS Talent Expressionss</strong> es propiedad intelectual de <a href="http://tstalent.net" target="_blank">TS Talent Soluciones</a></li>
                        <li><?php echo $mod_strings['LBL_ABOUT_SUITE_4']; ?></li>
                        <li><?php echo $mod_strings['LBL_ABOUT_SUITE_5']; ?></li>
                        <li>El soporte de <strong>TS TALENT SUITE CRM</strong> como fork de <a href="http://tstalent.net" target="_blank">TS Talent Soluciones, C.A.</a> es llevado a cabo por su Centro de Soporte a trav&eacute;s del tel&eacute;fono <strong>+58 (0212) 618.14.71</strong> / Correo: <a href="mailto:soporte@tstalent.net" target="_blank"><strong>soporte@tstalent.net</strong></a>. Requiere registro previo en el &aacute;rea de soporte.</li>
                    </ul>
                </div>
                <div class="about_suite">
                    <br>
                    <h3><?php echo $mod_strings['LBL_CONTRIBUTORS']; ?></h3>
                    <ul id="about_menu">
                        <li><?php echo $mod_strings['LBL_FEATURING']; ?>(<a href="http://www.salesagility.com"
                                                                            target="_blank">http://www.salesagility.com</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_CONTRIBUTOR_SECURITY_SUITE']; ?> (<a
                                href="http://www.sugaroutfitters.com" target="_blank">http://www.sugaroutfitters.com</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_CONTRIBUTOR_JJW_GMAPS']; ?> (<a href="http://www.jjwdesign.com"
                                                                                         target="_blank">http://www.jjwdesign.com</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_CONTRIBUTOR_CONSCIOUS']; ?> (<a
                                href="http://www.conscious.co.uk" target="_blank">http://www.conscious.co.uk</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_CONTRIBUTOR_RESPONSETAP']; ?> (<a
                                href="https://www.responsetap.com">https://www.responsetap.com</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_LANGUAGE_SPANISH']; ?> (<a href="http://www.disytel.com"
                                                                                    target="_blank">http://www.disytel.com</a>)
                        </li>
                        <li><?php echo $mod_strings['LBL_SOURCE_SUGAR']; ?> (<a href="http://www.sugarcrm.com"
                                                                                target="_blank">http://www.sugarcrm.com</a>)
                        </li>
                    </ul>
                </div>
                <div class="about_suite">
                    <br>
                    <h3><?php echo $mod_strings['LBL_PARTNERS']; ?></h3>
                    <ul id="about_menu">
                        <li><?php echo $mod_strings['LBL_SUITE_PARTNERS']; ?> (<a
                                href="https://suitecrm.com/community/partners">http://suitecrm.com</a>)
                        </li>
                    </ul>
                </div>
        </tr>
    </table>
</div>
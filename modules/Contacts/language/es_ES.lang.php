<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
 * Copyright (C) 2011 - 2016 Salesagility Ltd.
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

/*********************************************************************************
 * Description:  Defines the English language pack for the base application.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/

$mod_strings = array(
    //DON'T CONVERT THESE THEY ARE MAPPINGS
    'db_last_name' => 'LBL_LIST_LAST_NAME',
    'db_first_name' => 'LBL_LIST_FIRST_NAME',
    'db_title' => 'LBL_LIST_TITLE',
    'db_email1' => 'LBL_LIST_EMAIL_ADDRESS',
    'db_email2' => 'LBL_LIST_OTHER_EMAIL_ADDRESS',
    //END DON'T CONVERT
    'ERR_DELETE_RECORD' => 'Especifique el n??mero de registro para eliminar el contacto.',
    'LBL_ACCOUNT_ID' => 'ID de cuenta',
    'LBL_ACCOUNT_NAME' => 'Cuenta:',
    'LBL_CAMPAIGN' => 'Campa??a:',
    'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Actividades',
    'LBL_ADD_BUSINESSCARD' => 'Nueva Tarjeta de Visita',
    'LBL_ADDMORE_BUSINESSCARD' => 'A??adir otra tarjeta de visita',
    'LBL_ADDRESS_INFORMATION' => 'Direcciones',
    'LBL_ALT_ADDRESS_CITY' => 'Ciudad de direcci??n alternativa:',
    'LBL_ALT_ADDRESS_COUNTRY' => 'Pa??s de direcci??n alternativa:',
    'LBL_ALT_ADDRESS_POSTALCODE' => 'CP de direcci??n alternativa:',
    'LBL_ALT_ADDRESS_STATE' => 'Estado/Provincia de direcci??n alternativa:',
    'LBL_ALT_ADDRESS_STREET_2' => 'Calle de direcci??n alternativa 2',
    'LBL_ALT_ADDRESS_STREET_3' => 'Calle de direcci??n alternativa 3',
    'LBL_ALT_ADDRESS_STREET' => 'Calle de direcci??n alternativa:',
    'LBL_ALTERNATE_ADDRESS' => 'Direcci??n alternativa:',
    'LBL_ALT_ADDRESS' => 'Otra direcci??n:',
    'LBL_ANY_ADDRESS' => 'Cualquier direcci??n:',
    'LBL_ANY_EMAIL' => 'Cualquier email:',
    'LBL_ANY_PHONE' => 'Cualquier Tel??fono:',
    'LBL_ASSIGNED_TO_NAME' => 'Asignado a',
    'LBL_ASSIGNED_TO_ID' => 'Usuario Asignado',
    'LBL_ASSISTANT_PHONE' => 'Tel. asistente:',
    'LBL_ASSISTANT' => 'Asistente:',
    'LBL_BIRTHDATE' => 'Cumplea??os:',
    'LBL_BUSINESSCARD' => 'Tarjeta de Visita',
    'LBL_CITY' => 'Ciudad:',
    'LBL_CAMPAIGN_ID' => 'ID Campa??a',
    'LBL_CONTACT_INFORMATION' => 'Visi??n General',
    'LBL_CONTACT_NAME' => 'Nombre Contacto:',
    'LBL_CONTACT_OPP_FORM_TITLE' => 'Oportunidad-Contacto:',
    'LBL_CONTACT_ROLE' => 'Rol:',
    'LBL_CONTACT' => 'Contacto:',
    'LBL_COUNTRY' => 'Pa??s:',
    'LBL_CREATED_ACCOUNT' => 'Nueva cuenta creada',
    'LBL_CREATED_CALL' => 'Nueva llamada creada',
    'LBL_CREATED_CONTACT' => 'Nuevo contacto creado',
    'LBL_CREATED_MEETING' => 'Nueva reuni??n creada',
    'LBL_CREATED_OPPORTUNITY' => 'Creada nueva oportunidad',
    'LBL_DATE_MODIFIED' => 'Fecha de Modificaci??n',
    'LBL_DEFAULT_SUBPANEL_TITLE' => 'Contactos',
    'LBL_DEPARTMENT' => 'Departamento:',
    'LBL_DESCRIPTION_INFORMATION' => 'Informaci??n adicional',
    'LBL_DESCRIPTION' => 'Descripci??n:',
    'LBL_DIRECT_REPORTS_SUBPANEL_TITLE' => 'Informadores Directos',
    'LBL_DO_NOT_CALL' => 'No llamar:',
    'LBL_DUPLICATE' => 'Posible contacto duplicado',
    'LBL_EMAIL_ADDRESS' => 'Correo electr??nico:',
    'LBL_EMAIL_OPT_OUT' => 'Rehusar Email:',
    'LBL_EXISTING_ACCOUNT' => 'Usada cuenta existente',
    'LBL_EXISTING_CONTACT' => 'Usado contacto existente',
    'LBL_EXISTING_OPPORTUNITY' => 'Usada oportunidad existente',
    'LBL_FAX_PHONE' => 'Fax:',
    'LBL_FIRST_NAME' => 'Nombre:',
    'LBL_FULL_NAME' => 'Nombre Completo:',
    'LBL_HISTORY_SUBPANEL_TITLE' => 'Historial',
    'LBL_HOME_PHONE' => 'Tel. casa:',
    'LBL_ID' => 'ID:',
    'LBL_IMPORT_VCARD' => 'Importar vCard',
    'LBL_VCARD' => 'vCard',
    'LBL_IMPORT_VCARDTEXT' => 'Crea autom??ticamente un nuevo contacto a partir de una vCard.',
    'LBL_INVALID_EMAIL' => 'Email no v??lido:',
    'LBL_INVITEE' => 'Informadores',
    'LBL_LAST_NAME' => 'Apellidos:',
    'LBL_LEAD_SOURCE' => 'Toma de contacto:',
    'LBL_LIST_ACCEPT_STATUS' => 'Estado de Aceptaci??n',
    'LBL_LIST_ACCOUNT_NAME' => 'Cuenta',
    'LBL_LIST_CONTACT_NAME' => 'Nombre Contacto',
    'LBL_LIST_CONTACT_ROLE' => 'Rol',
    'LBL_LIST_EMAIL_ADDRESS' => 'Email',
    'LBL_LIST_FIRST_NAME' => 'Nombre',
    'LBL_LIST_FORM_TITLE' => 'Lista de Contactos',
    'LBL_VIEW_FORM_TITLE' => 'Vista de Contactos',
    'LBL_LIST_LAST_NAME' => 'Apellidos',
    'LBL_LIST_NAME' => 'Nombre',
    'LBL_LIST_OTHER_EMAIL_ADDRESS' => 'Otro Email',
    'LBL_LIST_PHONE' => 'Tel??fono',
    'LBL_LIST_TITLE' => 'Cargo',
    'LBL_MOBILE_PHONE' => 'M??vil:',
    'LBL_MODIFIED' => 'Modificado por:',
    'LBL_MODULE_NAME' => 'Contactos',
    'LBL_MODULE_TITLE' => 'Contactos: Inicio',
    'LBL_NAME' => 'Nombre completo:',
    'LBL_NEW_FORM_TITLE' => 'Nuevo Contacto',
    'LBL_NEW_PORTAL_PASSWORD' => 'Nueva Contrase??a del Portal:',
    'LBL_NOTE_SUBJECT' => 'Asunto de Nota',
    'LBL_OFFICE_PHONE' => 'Tel. Oficina:',
    'LBL_OPP_NAME' => 'Nombre Oportunidad:',
    'LBL_OPPORTUNITY_ROLE_ID' => 'ID de Rol en Oportunidad',
    'LBL_OPPORTUNITY_ROLE' => 'Rol en Oportunidad',
    'LBL_OTHER_EMAIL_ADDRESS' => 'Email Alternativo:',
    'LBL_OTHER_PHONE' => 'Tel. Alternativo:',
    'LBL_PHONE' => 'Tel??fono:',
    'LBL_PORTAL_ACTIVE' => 'Portal Activo:',
    'LBL_PORTAL_APP' => 'Aplicaci??n de Portal',
    'LBL_PORTAL_INFORMATION' => 'Informaci??n de Portal',
    'LBL_PORTAL_NAME' => 'Nombre del Portal:',
    'LBL_PORTAL_PASSWORD_ISSET' => 'Contrase??a de Portal Establecida:',
    'LBL_STREET' => 'Calle',
    'LBL_POSTAL_CODE' => 'C??digo postal:',
    'LBL_PRIMARY_ADDRESS_CITY' => 'Ciudad de direcci??n principal:',
    'LBL_PRIMARY_ADDRESS_COUNTRY' => 'Pa??s de direcci??n principal:',
    'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'CP de direcci??n principal:',
    'LBL_PRIMARY_ADDRESS_STATE' => 'Estado/Provincia de direcci??n principal:',
    'LBL_PRIMARY_ADDRESS_STREET_2' => 'Calle de direcci??n principal 2',
    'LBL_PRIMARY_ADDRESS_STREET_3' => 'Calle de direcci??n principal 3',
    'LBL_PRIMARY_ADDRESS_STREET' => 'Calle de direcci??n principal:',
    'LBL_PRIMARY_ADDRESS' => 'Direcci??n principal:',
    'LBL_PRODUCTS_TITLE' => 'Productos',
    'LBL_RELATED_CONTACTS_TITLE' => 'Contactos Relacionados',
    'LBL_REPORTS_TO_ID' => 'Informa a ID:',
    'LBL_REPORTS_TO' => 'Informa a:',
    'LBL_RESOURCE_NAME' => 'Nombre de Recurso',
    'LBL_SALUTATION' => 'Saludo',
    'LBL_SAVE_CONTACT' => 'Guardar Contacto',
    'LBL_SEARCH_FORM_TITLE' => 'B??squeda de Contactos',
    'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'Seleccionar Contactos Marcados',
    'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'Seleccionar Contactos Marcados',
    'LBL_STATE' => 'Estado/Provincia:',
    'LBL_SYNC_CONTACT' => 'Sincronizar con Outlook&reg;',
    'LBL_PROSPECT_LIST' => 'P??blico Objetivo',
    'LBL_TITLE' => 'Cargo:',
    'LNK_CONTACT_LIST' => 'Ver Contactos',
    'LNK_IMPORT_VCARD' => 'Nuevo Contacto desde vCard',
    'LNK_NEW_ACCOUNT' => 'Nueva Cuenta',
    'LNK_NEW_APPOINTMENT' => 'Nueva Cita',
    'LNK_NEW_CALL' => 'Registrar Llamada',
    'LNK_NEW_CASE' => 'Nuevo Caso',
    'LNK_NEW_CONTACT' => 'Nuevo Contacto',
    'LNK_NEW_EMAIL' => 'Archivar Email',
    'LNK_NEW_MEETING' => 'Programar Reuni??n',
    'LNK_NEW_NOTE' => 'Nueva Nota',
    'LNK_NEW_OPPORTUNITY' => 'Nueva Oportunidad',
    'LNK_NEW_TASK' => 'Nueva Tarea',
    'LNK_SELECT_ACCOUNT' => "Seleccione Cuenta",
    'MSG_DUPLICATE' => 'El registro para el contacto que va a crear podr??a ser un duplicado de otro registro de contacto existente. Los registros de contacto con nombres y/o direcciones de email similares se listan a continuaci??n.<br>Haga clic en Guardar para continuar con la creaci??n de este contacto, o en Cancelar para volver al m??dulo sin crear el contacto.',
    'MSG_SHOW_DUPLICATES' => 'El registro para el contacto que va a crear podr??a ser un duplicado de otro registro de contacto existente. Los registros de contacto con nombres y/o direcciones de email similares se listan a continuaci??n.<br>Haga clic en Guardar para continuar con la creaci??n de este contacto, o en Cancelar para volver al m??dulo sin crear el contacto.',
    'NTC_COPY_ALTERNATE_ADDRESS' => 'Copiar direcci??n alternativa a direcci??n principal',
    'NTC_COPY_PRIMARY_ADDRESS' => 'Copiar direcci??n principal a direcci??n alternativa',
    'NTC_DELETE_CONFIRMATION' => '??Est?? seguro de que quiere eliminar este registro?',
    'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'La creaci??n de una oportunidad requiere una cuenta.\n Por favor, cree una nueva cuenta o seleccione una existente.',
    'NTC_REMOVE_CONFIRMATION' => '??Est?? seguro que desea eliminar este contacto del caso?',
    'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => '??Est?? seguro que desea quitar este registro como informador directo?',

    'LBL_USER_PASSWORD' => 'Contrase??a:',

    'LBL_LEADS_SUBPANEL_TITLE' => 'Clientes Potenciales',
    'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Oportunidades',
    'LBL_DOCUMENTS_SUBPANEL_TITLE' => 'Documentos',
    'LBL_COPY_ADDRESS_CHECKED_PRIMARY' => 'Copiar direcci??n principal',
    'LBL_COPY_ADDRESS_CHECKED_ALT' => 'Copiar otra direcci??n',

    'LBL_CASES_SUBPANEL_TITLE' => 'Casos',
    'LBL_BUGS_SUBPANEL_TITLE' => 'Incidencias',
    'LBL_PROJECTS_SUBPANEL_TITLE' => 'Proyectos',
    'LBL_PROJECTS_RESOURCES' => 'Proyectos de recursos',
    'LBL_TARGET_OF_CAMPAIGNS' => 'Campa??as (Objetivo de) :',
    'LBL_CAMPAIGNS' => 'Campa??as',
    'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE' => 'Campa??as',
    'LBL_LIST_CITY' => 'Ciudad',
    'LBL_LIST_STATE' => 'Estado/Provincia',
    'LBL_HOMEPAGE_TITLE' => 'Mis Contactos',
    'LBL_OPPORTUNITIES' => 'Oportunidades',

    'LBL_CHECKOUT_DATE' => 'Fecha de Salida',
    'LBL_CONTACTS_SUBPANEL_TITLE' => 'Contactos',
    'LBL_PROJECT_SUBPANEL_TITLE' => 'Proyectos',
    'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'Campa??as',
    'LNK_IMPORT_CONTACTS' => 'Importar Contactos',

    //For export labels
    'LBL_PHONE_HOME' => 'Tel??fono de casa',
    'LBL_PHONE_MOBILE' => 'M??vil',
    'LBL_PHONE_WORK' => 'Tel??fono del trabajo',
    'LBL_PHONE_OTHER' => 'Otro tel??fono',
    'LBL_PHONE_FAX' => 'Fax oficina',

    'LBL_EXPORT_ASSIGNED_USER_NAME' => 'Usuario asignado',
    'LBL_EXPORT_ASSIGNED_USER_ID' => 'ID usuario asignado',
    'LBL_EXPORT_MODIFIED_USER_ID' => 'Modificado por ID',
    'LBL_EXPORT_CREATED_BY' => 'Creado por ID',
    'LBL_EXPORT_PHONE_HOME' => 'Tel. casa',
    'LBL_EXPORT_PHONE_MOBILE' => 'M??vil',
    // SNIP
    'LBL_CONTACT_HISTORY_SUBPANEL_TITLE' => 'Emails de contactos relacionados',
    'LBL_USER_SYNC' => 'Sincronizar Usuario',

    'LBL_FP_EVENTS_CONTACTS_FROM_FP_EVENTS_TITLE' => 'Eventos',
    'LBL_FP_EVENT_DELEGATES_CONTACTS_1_FROM_FP_EVENT_DELEGATES_TITLE' => 'Delegados',

    'LBL_AOP_CASE_UPDATES' => 'Actualiazciones de Casos',
    'LBL_CREATE_PORTAL_USER' => 'Crear Usuario del Portal',
    'LBL_ENABLE_PORTAL_USER' => 'Habilitar Usuario del Portal',
    'LBL_DISABLE_PORTAL_USER' => 'Deshabilitar el Usuario del Portal',
    'LBL_CREATE_PORTAL_USER_FAILED' => 'Error al crear el usuario del portal',
    'LBL_ENABLE_PORTAL_USER_FAILED' => 'Error al habilitar el usuario del portal',
    'LBL_DISABLE_PORTAL_USER_FAILED' => 'Error al deshabilitar el usuario del portal',
    'LBL_CREATE_PORTAL_USER_SUCCESS' => 'Usuario del portal creado',
    'LBL_ENABLE_PORTAL_USER_SUCCESS' => 'Usuario del portal habilitado',
    'LBL_DISABLE_PORTAL_USER_SUCCESS' => 'Usuario del portal deshabilitado',
    'LBL_NO_JOOMLA_URL' => 'No se especific?? URL del portal',
    'LBL_PORTAL_USER_TYPE' => 'Tipo de usuario del portal',
    'LBL_PORTAL_ACCOUNT_DISABLED' => 'Cuenta deshabilitada',
    'LBL_JOOMLA_ACCOUNT_ID' => 'ID de cuenta de Joomla',
);

?>

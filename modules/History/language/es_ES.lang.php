<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
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

 


$mod_strings = array (
  'LBL_MODULE_NAME' => 'Historial',
  'LBL_MODULE_TITLE' => 'Historial: Inicio',
  'LBL_SEARCH_FORM_TITLE' => 'B??squeda en Historial',
  'LBL_LIST_FORM_TITLE' => 'Historial',
  'LBL_LIST_SUBJECT' => 'Asunto',
  'LBL_LIST_CONTACT' => 'Contacto',
  'LBL_LIST_RELATED_TO' => 'Relacionado con',
  'LBL_LIST_DATE' => 'Fecha',
  'LBL_LIST_TIME' => 'Hora de inicio',
  'LBL_LIST_CLOSE' => 'Cerrar',
  'LBL_SUBJECT' => 'Asunto:',
  'LBL_STATUS' => 'Estado:',
  'LBL_LOCATION' => 'Lugar:',
  'LBL_DATE_TIME' => 'Fecha y hora de inicio:',
  'LBL_DATE' => 'Fecha de inicio:',
  'LBL_TIME' => 'Hora de inicio:',
  'LBL_DURATION' => 'Duraci??n:',
  'LBL_HOURS_MINS' => '(horas/minutos)',
  'LBL_CONTACT_NAME' => 'Nombre del Contacto:',
  'LBL_MEETING' => 'Reuni??n:',
  'LBL_DESCRIPTION_INFORMATION' => 'Informaci??n de Descripci??n',
  'LBL_DESCRIPTION' => 'Descripci??n:',
  'LBL_COLON' => ':',
  'LBL_DEFAULT_STATUS' => 'Planificado',
  'LNK_NEW_CALL' => 'Registrar Llamada',
  'LNK_NEW_MEETING' => 'Programar Reuni??n',
  'LNK_NEW_TASK' => 'Crear Tarea',
  'LNK_NEW_NOTE' => 'Nueva Nota o Archivo Adjunto',
  'LNK_NEW_EMAIL' => 'Archivar Email',
  'LNK_CALL_LIST' => 'Llamadas',
  'LNK_MEETING_LIST' => 'Reuniones',
  'LNK_TASK_LIST' => 'Tareas',
  'LNK_NOTE_LIST' => 'Notas',
  'LNK_EMAIL_LIST' => 'Correos',
  'ERR_DELETE_RECORD' => 'Debe especificar un n??mero de registro para eliminar la cuenta.',
  'NTC_REMOVE_INVITEE' => '??Est?? seguro de que desea quitar a este asistente de la reuni??n?',
  'LBL_INVITEE' => 'Asistentes',
  'LBL_LIST_DIRECTION' => 'Direcci??n',
  'LBL_DIRECTION' => 'Direcci??n',
  'LNK_NEW_APPOINTMENT' => 'Nueva Cita',
  'LNK_VIEW_CALENDAR' => 'Hoy',
  'LBL_OPEN_ACTIVITIES' => 'Actividades Abiertas',
  'LBL_HISTORY' => 'Historial',
  'LBL_UPCOMING' => 'Mis Pr??ximas Citas',
  'LBL_TODAY' => 'hasta ',
  'LBL_NEW_TASK_BUTTON_TITLE' => 'Nueva Tarea',
  'LBL_NEW_TASK_BUTTON_LABEL' => 'Crear Tarea',
  'LBL_SCHEDULE_MEETING_BUTTON_TITLE' => 'Programar Reuni??n',
  'LBL_SCHEDULE_MEETING_BUTTON_LABEL' => 'Programar Reuni??n',
  'LBL_SCHEDULE_CALL_BUTTON_TITLE' => 'Registrar Llamada',
  'LBL_SCHEDULE_CALL_BUTTON_LABEL' => 'Registrar Llamada',
  'LBL_NEW_NOTE_BUTTON_TITLE' => 'Nueva Nota o Archivo Adjunto',
  'LBL_NEW_NOTE_BUTTON_LABEL' => 'Nueva Nota o Archivo Adjunto',
  'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Archivar Email',
  'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Archivar Email',
  'LBL_LIST_STATUS' => 'Estado',
  'LBL_LIST_DUE_DATE' => 'Fecha de Vencimiento',
  'LBL_LIST_LAST_MODIFIED' => 'Modificado',
  'NTC_NONE_SCHEDULED' => 'Nada programado.',
  'appointment_filter_dom' => array(
  	 'today' => 'hoy'
  	,'tomorrow' => 'ma??ana'
  	,'this Saturday' => 'esta semana'
  	,'next Saturday' => 'la semana que viene'
  	,'last this_month' => 'este mes'
  	,'last next_month' => 'el mes que viene'
  ),
  'LNK_IMPORT_NOTES'=>'Importar Notas',
  'NTC_NONE'=>'Ninguno',
	'LBL_ACCEPT_THIS'=>'??Aceptar?',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Historial',
);

?>
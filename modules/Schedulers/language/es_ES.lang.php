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
// OOTB Scheduler Job Names:
    'LBL_OOTB_WORKFLOW' => 'Procesar Tareas de Workflow',
    'LBL_OOTB_REPORTS' => 'Ejecutar Tareas Programadas de Generación de Informes',
    'LBL_OOTB_IE' => 'Comprobar Bandejas de Entrada',
    'LBL_OOTB_BOUNCE' => 'Ejecutar Proceso Nocturno de Emails de Campaña Rebotados',
    'LBL_OOTB_CAMPAIGN' => 'Ejecutar Proceso Nocturno de Campañas de Email Masivo',
    'LBL_OOTB_PRUNE' => 'Truncar Base de datos al Inicio del Mes',
    'LBL_OOTB_TRACKER' => 'Truncar Tablas de Monitorización',
    'LBL_OOTB_SUGARFEEDS' => 'Limpiar las Tablas de SuiteCRM Feed',
    'LBL_OOTB_LUCENE_INDEX' => 'Realizar el índice de Lucene',
    'LBL_OOTB_OPTIMISE_INDEX' => 'Optimizar el índice AOD',
    'LBL_UPDATE_TRACKER_SESSIONS' => 'Actualizar Tabla tracker_sessions',
    'LBL_OOTB_SEND_EMAIL_REMINDERS' => 'Ejecutar Envío de Emails de Recordatorios',
    'LBL_OOTB_CLEANUP_QUEUE' => 'Limpiar Cola de Trabajos',
    'LBL_OOTB_REMOVE_DOCUMENTS_FROM_FS' => 'Extracción de documentos del sistema de archivos',

// List Labels
    'LBL_LIST_JOB_INTERVAL' => 'Intervalo:',
    'LBL_LIST_LIST_ORDER' => 'Planificadores:',
    'LBL_LIST_NAME' => 'Planificador:',
    'LBL_LIST_RANGE' => 'Rango:',
    'LBL_LIST_REMOVE' => 'Quitar:',
    'LBL_LIST_STATUS' => 'Estado:',
    'LBL_LIST_TITLE' => 'Lista de Planificación:',
    'LBL_LIST_EXECUTE_TIME' => 'Será ejecutado en:',
// human readable:
    'LBL_SUN' => 'Domingo',
    'LBL_MON' => 'Lunes',
    'LBL_TUE' => 'Martes',
    'LBL_WED' => 'Miércoles',
    'LBL_THU' => 'Jueves',
    'LBL_FRI' => 'Viernes',
    'LBL_SAT' => 'Sábado',
    'LBL_ALL' => 'Todos los días',
    'LBL_EVERY_DAY' => 'Todos los días',
    'LBL_AT_THE' => 'El',
    'LBL_EVERY' => 'Cada',
    'LBL_FROM' => 'Desde',
    'LBL_ON_THE' => 'En el',
    'LBL_RANGE' => 'a',
    'LBL_AT' => 'en',
    'LBL_IN' => 'en',
    'LBL_AND' => 'y',
    'LBL_MINUTES' => 'minutos',
    'LBL_HOUR' => 'horas',
    'LBL_HOUR_SING' => 'hora',
    'LBL_MONTH' => 'mes',
    'LBL_OFTEN' => 'Tan a menudo como sea posible.',
    'LBL_MIN_MARK' => 'marca por minuto',


// crontabs
    'LBL_MINS' => 'min',
    'LBL_HOURS' => 'horas',
    'LBL_DAY_OF_MONTH' => 'fecha',
    'LBL_MONTHS' => 'me',
    'LBL_DAY_OF_WEEK' => 'día',
    'LBL_CRONTAB_EXAMPLES' => 'Lo arriba mostrado utiliza notación estándar de crontab.',
    'LBL_CRONTAB_SERVER_TIME_PRE' => 'Las especificaciones del cron para que se ejecute es sobre la base de la zona horaria del servidor (',
    'LBL_CRONTAB_SERVER_TIME_POST' => '). Por favor, especifique el tiempo de ejecución del planificador en consecuencia.',
// Labels
    'LBL_ALWAYS' => 'Siempre',
    'LBL_CATCH_UP' => 'Ejecutar Si Falla',
    'LBL_CATCH_UP_WARNING' => 'Desmarque si la ejecución de esta tarea puede durar más de un momento.',
    'LBL_DATE_TIME_END' => 'Fecha y Hora de Fin',
    'LBL_DATE_TIME_START' => 'Fecha y Hora de Inicio',
    'LBL_INTERVAL' => 'Intervalo',
    'LBL_JOB' => 'Tarea',
    'LBL_JOB_URL' => 'URL de la tarea',
    'LBL_LAST_RUN' => 'Última Ejecución Exitosa',
    'LBL_MODULE_NAME' => 'Planificador SuiteCRM',
    'LBL_MODULE_TITLE' => 'Planificadores',
    'LBL_NAME' => 'Nombre de Tarea',
    'LBL_NEVER' => 'Nunca',
    'LBL_NEW_FORM_TITLE' => 'Nueva Planificación',
    'LBL_PERENNIAL' => 'continuo',
    'LBL_SEARCH_FORM_TITLE' => 'Búsqueda de Planificación',
    'LBL_SCHEDULER' => 'Planificador:',
    'LBL_STATUS' => 'Estado',
    'LBL_TIME_FROM' => 'Activo Desde',
    'LBL_TIME_TO' => 'Activo Hasta',
    'LBL_WARN_CURL_TITLE' => 'Aviso cURL:',
    'LBL_WARN_CURL' => 'Aviso:',
    'LBL_WARN_NO_CURL' => 'Este sistema no tiene las librerías cURL habilitadas/compiladas en el módulo de PHP (--with-curl=/ruta/a/libreria_curl).  Por favor, contacte con su administrador para resolver el problema.  Sin la funcionalidad que provee cURL, el Planificador no puede utilizar hilos con sus tareas.',
    'LBL_BASIC_OPTIONS' => 'Configuración Básica',
    'LBL_ADV_OPTIONS' => 'Opciones Avanzadas',
    'LBL_TOGGLE_ADV' => 'Mostrar Opciones Avanzadas',
    'LBL_TOGGLE_BASIC' => 'Mostrar Opciones Básicas',
// Links
    'LNK_LIST_SCHEDULER' => 'Planificadores',
    'LNK_NEW_SCHEDULER' => 'Nuevo Planificador',
    'LNK_LIST_SCHEDULED' => 'Tareas Planificadas',
// Messages
    'SOCK_GREETING' => "\"\nEste es el interfaz de usuario para el Servicio de Planificación de SuiteCRM. \n[ Comandos de demonio disponibles: start|restart|shutdown|status ]<br />Para salir, teclee \"quit\". Para detener el servicio \"shutdown\".\n\"",
    'ERR_DELETE_RECORD' => 'Debe especificar un número de registro para eliminar la planificación.',
    'ERR_CRON_SYNTAX' => 'Sintaxis de Cron inválida',
    'NTC_DELETE_CONFIRMATION' => '¿Está seguro de que desea eliminar este registro?',
    'NTC_STATUS' => 'Establezca el estado a Inactivo para quitar esta planificación de las listas desplegables de selección de Planificador',
    'NTC_LIST_ORDER' => 'Establezca el orden en que esta planificación aparecerá en las listas desplegables de selección de Planificador',
    'LBL_CRON_INSTRUCTIONS_WINDOWS' => 'Para configurar el Planificador de Windows',
    'LBL_CRON_INSTRUCTIONS_LINUX' => 'Para configurar Crontab',
    'LBL_CRON_LINUX_DESC' => 'Nota: Para ejecutar los Planificadores de SuiteCRM, añada la siguiente línea a su archivo crontab:',
    'LBL_CRON_WINDOWS_DESC' => 'Nota: Para ejecutar los planificadores de SuiteCRM, cree un archivo de proceso por lotes a ejecutar utilizando las Tareas Programadas de Windows. El archivo de proceso por lotes debería contener los siguientes comandos:',
    'LBL_NO_PHP_CLI' => 'Si su servidor no tiene disponibles los binarios PHP, puede utilizar wget o curl para lanzar sus Tareas.<br>para wget: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;wget --quiet --non-verbose ' . (isset($sugar_config['site_url'])?$sugar_config['site_url']:'http://yoursite') . '/cron.php > /dev/null 2>&1</b><br>for curl: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;curl --silent ' . (isset($sugar_config['site_url'])?$sugar_config['site_url']:'http://yoursite') . '/cron.php > /dev/null 2>&1',
// Subpanels
    'LBL_JOBS_SUBPANEL_TITLE' => 'Job Log',
    'LBL_EXECUTE_TIME' => 'Execute Time',

//jobstrings
    'LBL_REFRESHJOBS' => 'Refresh Jobs',
    'LBL_POLLMONITOREDINBOXES' => 'Check Inbound Mail Accounts',
    'LBL_PERFORMFULLFTSINDEX' => 'Full-text Search Index System',

    'LBL_RUNMASSEMAILCAMPAIGN' => 'Run Nightly Mass Email Campaigns',
    'LBL_POLLMONITOREDINBOXESFORBOUNCEDCAMPAIGNEMAILS' => 'Run Nightly Process Bounced Campaign Emails',
    'LBL_PRUNEDATABASE' => 'Prune Database on 1st of Month',
    'LBL_TRIMTRACKER' => 'Prune Tracker Tables',
    'LBL_TRIMSUGARFEEDS' => 'Prune SuiteCRM Feed Tables',
    'LBL_SENDEMAILREMINDERS' => 'Run Email Reminders Sending',
    'LBL_CLEANJOBQUEUE' => 'Cleanup Job Queue',
    'LBL_REMOVEDOCUMENTSFROMFS' => 'Removal of documents from filesystem',

    'LBL_AODOPTIMISEINDEX' => 'Optimise Advanced OpenDiscovery Index',
    'LBL_AODINDEXUNINDEXED' => 'Index unindexed documents',
    'LBL_POLLMONITOREDINBOXESAOP' => 'AOP Poll Monitored Inboxes',
    'LBL_AORRUNSCHEDULEDREPORTS' => 'Run scheduled reports',
    'LBL_PROCESSAOW_WORKFLOW' => 'Process AOW Workflow',
);

global $sugar_config;
?>

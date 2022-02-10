<?php
/**
 * Products, Quotations & Invoices modules.
 * Extensions to SugarCRM
 * @package Advanced OpenSales for SugarCRM
 * @subpackage Products
 * @copyright SalesAgility Ltd http://www.salesagility.com
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with this program; if not, see http://www.gnu.org/licenses
 * or write to the Free Software Foundation,Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301  USA
 *
 * @author Salesagility Ltd <support@salesagility.com>
 */

$mod_strings = array (
    'LBL_ASSIGNED_TO_NAME' => 'Administrador de Contratos',
    'LBL_CONTRACT_ACCOUNT' => 'Cuenta',
    'LBL_OPPORTUNITY' => 'Oportunidad',
    'LBL_ID' => 'ID',
    'LBL_DATE_ENTERED' => 'Fecha de Creación',
    'LBL_DATE_MODIFIED' => 'Fecha de Modificación',
    'LBL_MODIFIED' => 'Modificado Por',
    'LBL_MODIFIED_ID' => 'Modificado Por Id',
    'LBL_MODIFIED_NAME' => 'Modificado Por Nombre',
    'LBL_CREATED' => 'Creado Por',
    'LBL_CREATED_ID' => 'Creado Por Id',
    'LBL_DESCRIPTION' => 'Descripción',
    'LBL_DELETED' => 'Eliminado',
    'LBL_NAME' => 'Título del Contrato',
    'LBL_CREATED_USER' => 'Creado por el usuario',
    'LBL_MODIFIED_USER' => 'Modificado por el usuario',
    'LBL_LIST_NAME' => 'Nombre',
    'LBL_LIST_FORM_TITLE' => 'Lista de Contratos',
    'LBL_MODULE_NAME' => 'Contratos',
    'LBL_MODULE_TITLE' => 'Contactos: Inicio',
    'LBL_HOMEPAGE_TITLE' => 'Mis Contratos',
    'LNK_NEW_RECORD' => 'Crear Contrato',
    'LNK_LIST' => 'Ver Contratos',
    'LNK_IMPORT_AOS_CONTRACTS' => 'Importar Contratos',
    'LBL_SEARCH_FORM_TITLE' => 'Buscar Contratos',
    'LBL_HISTORY_SUBPANEL_TITLE' => 'Ver Historial',
    'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Actividades',
    'LBL_AOS_CONTRACTS_SUBPANEL_TITLE' => 'Contratos',
    'LBL_NEW_FORM_TITLE' => 'Nuevo Contrato',
    'LBL_CONTRACT_NAME' => 'Nombre del Contrato',
    'LBL_REFERENCE_CODE ' => 'Código de Referencia',
    'LBL_START_DATE' => 'Fecha de Inicio',
    'LBL_END_DATE' => 'Fecha de Finalización',
    'LBL_TOTAL_CONTRACT_VALUE' => 'Valor del Contrato',
    'LBL_STATUS' => 'Estado',
    'LBL_CUSTOMER_SIGNED_DATE' => 'Fecha de Firma del Cliente',
    'LBL_COMPANY_SIGNED_DATE' => 'Fecha de Firma de la Compañía',
    'LBL_RENEWAL_REMINDER_DATE' => 'Fecha de Recordatorio de Renovación',
    'LBL_CONTRACT_TYPE' => 'Tipo de Contrato',
    'LBL_CONTACT' => 'Contacto',
    'LBL_ADD_GROUP' => 'Agregar Grupo',
    'LBL_DELETE_GROUP' => 'Eliminar Grupo',
    'LBL_GROUP_NAME' => 'Nombre del Grupo',
    'LBL_GROUP_TOTAL' => 'Total del Grupo',
    'LBL_PRODUCT_QUANITY' => 'Cantidad',
    'LBL_PRODUCT_NAME' => 'Producto',
    'LBL_PART_NUMBER' => 'Número de Parte',
    'LBL_PRODUCT_NOTE' => 'Nota',
    'LBL_PRODUCT_DESCRIPTION' => 'Descripción',
    'LBL_LIST_PRICE' => 'Lista',
    'LBL_DISCOUNT_TYPE' => 'Tipo',
    'LBL_DISCOUNT_AMT' => 'Descuento',
    'LBL_UNIT_PRICE' => 'Precio de Venta',
    'LBL_TOTAL_PRICE' => 'Total',
    'LBL_VAT' => 'Iva',
    'LBL_VAT_AMT' => 'Cantidad de Iva',
    'LBL_SERVICE_NAME' => 'Servicio',
    'LBL_SERVICE_LIST_PRICE' => 'Lista',
    'LBL_SERVICE_PRICE' => 'Precio de Venta',
    'LBL_SERVICE_DISCOUNT' => 'Descuento',
    'LBL_LINE_ITEMS' => 'Líneas de Artículos',
    'LBL_SUBTOTAL_AMOUNT' => 'Subtotal',
    'LBL_DISCOUNT_AMOUNT' => 'Descuento',
    'LBL_TAX_AMOUNT' => 'Iva',
    'LBL_SHIPPING_AMOUNT' => 'Envíos',
    'LBL_TOTAL_AMT' => 'Total',
    'LBL_GRAND_TOTAL' => 'Gran Total',
    'LBL_SHIPPING_TAX' => 'Impuesto de Envío',
    'LBL_SHIPPING_TAX_AMT' => 'Impuesto de Envío',
    'LBL_ADD_PRODUCT_LINE' => 'Agregar Línea de Producto',
    'LBL_ADD_SERVICE_LINE' => 'Agregar Línea de Servicio',
    'LBL_PRINT_AS_PDF' => 'Imprimir como PDF',
    'LBL_EMAIL_PDF' => 'Enviar PDF por Email',
    'LBL_PDF_NAME' => 'Contrato',
    'LBL_EMAIL_NAME' => 'Contrato para',
    'LBL_NO_TEMPLATE' => 'ERROR\nNo se han encontrado plantillas. Si usted no ha creado una plantilla de Contrato, vaya al módulo de Plantillas PDF y cree una',
    'LBL_TOTAL_CONTRACT_VALUE_USDOLLAR' => 'Valor del contrato (moneda predeterminada)',
    'LBL_SUBTOTAL_AMOUNT_USDOLLAR' => 'Subtotal (moneda predeterminada)',
    'LBL_DISCOUNT_AMOUNT_USDOLLAR' => 'Descuento (moneda predeterminada)',
    'LBL_TAX_AMOUNT_USDOLLAR' => 'Impuestos (moneda predeterminada)',
    'LBL_SHIPPING_AMOUNT_USDOLLAR' => 'Envío (moneda predeterminada)',
    'LBL_TOTAL_AMT_USDOLLAR' => 'Total (moneda predeterminada)',
    'LBL_SHIPPING_TAX_USDOLLAR' => 'Impuesto de envío (moneda predeterminada)',
    'LBL_SHIPPING_TAX_AMT_USDOLLAR' => 'Impuesto de envío (moneda predeterminada)',
    'LBL_GRAND_TOTAL_USDOLLAR' => 'Grupo Total (moneda predeterminada)',
);
?>

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DISTINCT in ABAP SQL and ABAP CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCL_DHIVYA_DISTINCT as select from /dmo/connection
{
     airport_from_id,
     distance_unit
}

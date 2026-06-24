@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations in ABAP SQL and ABAP CDS'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZCL_DHIVYA_AGGREGATION
  as select from /dmo/connection
{
  max( distance )                        as Maximum,
  min( distance )                        as Minimum,
  sum( distance )                        as Total,
  count(*)                               as Count_All,
  count( distinct airport_from_id )      as Count_Dist,
  avg( distance as abap.fltp )    as Average
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Joins in ABAP SQL and ABAP CDS'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DHIVYA_JOINS
  as select from /dmo/connection as c
    inner join /dmo/carrier as a
      on c.carrier_id = a.carrier_id
{
  key c.carrier_id,
  key c.connection_id,

      a.name            as CarrierName,
      c.airport_from_id,
      c.airport_to_id,
      c.distance,
      c.distance_unit
}
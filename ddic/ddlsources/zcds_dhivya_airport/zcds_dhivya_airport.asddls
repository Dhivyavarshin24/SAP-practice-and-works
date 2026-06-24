@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Using CDS Access Controls'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_dhivya_airport as select from /dmo/airport
{
   key airport_id as AirportId,
   name as Name,
   city as City,
   country as Country
}

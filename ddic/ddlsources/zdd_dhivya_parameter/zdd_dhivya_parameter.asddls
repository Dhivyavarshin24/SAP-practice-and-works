@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Definition with Input Parameters'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZDD_DHIVYA_PARAMETER

  with parameters
    p_firstdate : /dmo/flight_date

  as select from /dmo/travel
{
  key travel_id,

  @Semantics.amount.currencyCode: 'currency_code'
  booking_fee  as BookingFee,

  currency_code,

  begin_date,

  end_date,

  agency_id,

  customer_id

}
where begin_date >= $parameters.p_firstdate

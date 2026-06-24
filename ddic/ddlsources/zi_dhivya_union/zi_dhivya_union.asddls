@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'UNION (ALL) in ABAP SQL and ABAP CDS'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DHIVYA_UNION

  as select from /DMO/I_Carrier
{
    @EndUserText.label: 'Category'
    key 'Airline'        as Type,
    key AirlineID        as Id,
        Name
}
where CurrencyCode = 'GBP'

union all

select from /DMO/I_Airport
{
    key 'Airport'        as Type,
    key AirportID        as Id,
        Name
}
where City = 'London'

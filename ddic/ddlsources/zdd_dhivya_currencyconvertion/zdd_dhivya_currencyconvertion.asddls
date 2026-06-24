@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Currency Conversion in CDS View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZDD_DHIVYA_CURRENCYCONVERTION
  with parameters
    TargetCurrency : waers
  as select from /DMO/I_Flight
{

  $parameters.TargetCurrency as ConvertedCurrency,

  @Semantics.amount.currencyCode: 'ConvertedCurrency'
  currency_conversion(

                  amount => Price,
                  source_currency => CurrencyCode,
                  target_currency => $parameters.TargetCurrency,
                  exchange_rate_date => FlightDate,
                  exchange_rate_type => 'M',
                  error_handling     => 'SET_TO_NULL'
                  )          as PriceConverted
}



@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gadget Inventory Root View'

define root view entity ZI_GADGET_DHIVYA
  as select from ztgadget_dhivya
{
  key gadget_uuid      as GadgetUUID,

      gadget_name      as GadgetName,

      brand            as Brand,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      price            as Price,

      currency_code    as CurrencyCode,

      last_changed_at  as LastChangedAt
}
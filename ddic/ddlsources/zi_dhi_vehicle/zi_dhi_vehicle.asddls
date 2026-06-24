@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vehicle Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DHI_VEHICLE
  as select from zflt_dhi_vehicle

  composition [0..*] of ZI_DHI_MAINTLOG as _MaintLog

{
  key vehicle_uuid,
      vin,
      model_name,
      last_service_date,

      @Semantics.amount.currencyCode: 'currency'
      total_cost,
      currency,

      created_by,
      created_at,
      last_changed_by,
      last_changed_at,
      local_last_changed_at,

      _MaintLog  
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vehicle Maintenance Log Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DHI_MAINTLOG
  as select from zflt_maintlog

  association to parent ZI_DHI_VEHICLE as _Vehicle
    on $projection.vehicle_uuid = _Vehicle.vehicle_uuid

{
  key log_uuid,
      vehicle_uuid,
      maint_date,
      maint_type,

      @Semantics.amount.currencyCode: 'currency'
      cost,
      currency,

      created_by,
      created_at,
      last_changed_by,
      last_changed_at,
      local_last_changed_at,

      _Vehicle  
}

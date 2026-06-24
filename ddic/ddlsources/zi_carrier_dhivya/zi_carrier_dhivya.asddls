@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'carrier in data definition'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_carrier_dhivya as select from zcarrier_dhivya
association [1..*] to zi_connection_dhivya as _Connection
  on $projection.Carrid = _Connection.Carrid
{
    key carrid as Carrid,
    name as Name,
    currcode as Currcode,

    _Connection
}

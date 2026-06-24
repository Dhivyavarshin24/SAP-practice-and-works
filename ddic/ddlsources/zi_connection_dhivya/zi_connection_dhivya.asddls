@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'connection data definition'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_connection_dhivya as select from zconn_dhivya
association [1..*] to zi_carrier_dhivya as _Carrier
on $projection.Carrid = _Carrier.Carrid
{
     key carrid as Carrid,
     key connid as Connid,
     cityfrom as Cityfrom,
     cityto as Cityto,
     _Carrier.Name as AirlineName,
     _Carrier.Name as CurrCode,
     _Carrier
}

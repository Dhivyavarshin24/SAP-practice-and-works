@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CARRIER_DHIVYA01
  as select from zcarrier_dhi01
{
    key carrid              as Carrid,
        name                as Name,
        currcode            as Currcode,
        zz_sustain_rating   as ZzSustainRating,
        zz_last_audit_at    as ZzLastAuditAt
}

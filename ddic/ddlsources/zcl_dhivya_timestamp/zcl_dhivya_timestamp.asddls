@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Timestamp Conversion in ABAP SQL and ABAP CDS (book-3)'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcl_dhivya_timestamp as select from /dmo/travel
{
     tstmp_to_dats(
      cast( lastchangedat as abap.dec(15,0) ),
      cast( 'EST' as abap.char(6) ),

        $session.client,
      'FAIL'
  ) as date_est
}

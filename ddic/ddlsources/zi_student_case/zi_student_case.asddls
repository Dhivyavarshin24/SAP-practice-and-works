@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CASE Distinctions in ABAP CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_STUDENT_CASE as select from zdtstudent_mark
{
    key rollno,
    name,
    marks,

    case
        when marks >= 90 then 'Distinction'
        when marks >= 75 then 'First Class'
        when marks >= 50 then 'Pass'
        else 'Fail'
    end as result_status
}

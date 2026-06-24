@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee CDS View'
@Metadata.ignorePropagatedAnnotations: true

define view entity z_dhivya_cds1
  as select from zdb_dhivya_empid
{
  key employee_id as EmployeeID,
      first_name  as FirstName,
      last_name   as LastName,
      birth_date  as BirthDate
}
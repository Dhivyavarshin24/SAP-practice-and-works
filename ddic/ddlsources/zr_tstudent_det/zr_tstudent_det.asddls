@AccessControl.authorizationCheck: #MANDATORY
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTSTUDENT_DET'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TSTUDENT_DET
  as select from ztstudent_det
{
@Consumption.valueHelpDefinition: [{ entity: { name: 'ZR_TDHIVYA_STUDENT', element: 'Rollno' } }]
  key rollno as Rollno,
  key standard as Standard,
  name as Name,
  mark as Mark,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}

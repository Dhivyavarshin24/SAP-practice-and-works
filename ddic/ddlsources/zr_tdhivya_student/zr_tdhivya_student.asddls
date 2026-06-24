@AccessControl.authorizationCheck: #MANDATORY
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTDHIVYA_STUDENT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TDHIVYA_STUDENT
  as select from ztdhivya_student
{
  key rollno as Rollno,
  name as Name,
  phone as Phone,
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

@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTSTUDENT_DETAIL'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TSTUDENT_DETAIL
  as select from ZTSTUDENT_DETAIL
{
  key rollno as Rollno,
  name as Name,
  standard as Standard,
  mark as Mark,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}

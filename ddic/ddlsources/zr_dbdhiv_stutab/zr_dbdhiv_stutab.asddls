@AccessControl.authorizationCheck: #MANDATORY
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDBDHIV_STUTAB'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DBDHIV_STUTAB
  as select from zdb_dhiv_stutab
{
  key student_rollno as StudentRollno,
  studentname as Studentname,
  fathername as Fathername,
  mothername as Mothername,
  phonename as Phonename,
  schoolname as Schoolname,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}

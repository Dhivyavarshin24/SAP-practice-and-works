@AccessControl.authorizationCheck: #MANDATORY
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDBDHIV_STUTAB2'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DBDHIV_STUTAB2
  as select from zdb_dhiv_stutab2
{
  key roll as Roll,
  key standard as Standard,
  marks as Marks,
  sname as Sname,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}

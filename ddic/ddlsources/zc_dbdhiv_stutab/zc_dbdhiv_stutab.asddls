@Metadata.allowExtensions: true
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZDBDHIV_STUTAB'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DBDHIV_STUTAB
  provider contract transactional_query
  as projection on ZR_DBDHIV_STUTAB
  association [1..1] to ZR_DBDHIV_STUTAB as _BaseEntity on $projection.StudentRollno = _BaseEntity.StudentRollno
{
@Consumption.valueHelpDefinition: [{ entity: { name: 'ZR_DBDHIV_STUTAB', element: 'StudentRollno' } }]
  key StudentRollno,
  Studentname,
  Fathername,
  Mothername,
  Phonename,
  Schoolname,
  @Semantics: {
    user.createdBy: true
  }
  CreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  CreatedAt,
  @Semantics: {
    user.lastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  _BaseEntity
}

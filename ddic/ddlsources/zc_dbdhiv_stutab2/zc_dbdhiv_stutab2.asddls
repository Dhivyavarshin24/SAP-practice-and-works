@Metadata.allowExtensions: true
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZDBDHIV_STUTAB2'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DBDHIV_STUTAB2
  provider contract transactional_query
  as projection on ZR_DBDHIV_STUTAB2
  association [1..1] to ZR_DBDHIV_STUTAB2 as _BaseEntity on $projection.Roll = _BaseEntity.Roll and $projection.Standard = _BaseEntity.Standard
{
@Consumption.valueHelpDefinition: [{ entity: { name: 'ZR_DBDHIV_STUTAB', element: 'StudentRollno' } }]
  key Roll,
  key Standard,
  Marks,
  Sname,
  @Semantics: {
    user.createdBy: true
  }
  LocalCreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  LocalCreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LocalLastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _BaseEntity
}

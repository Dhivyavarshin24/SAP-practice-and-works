@Metadata.allowExtensions: true
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZTSTUDENT_DET'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TSTUDENT_DET
  provider contract transactional_query
  as projection on ZR_TSTUDENT_DET
  association [1..1] to ZR_TSTUDENT_DET as _BaseEntity on $projection.Rollno = _BaseEntity.Rollno
{
@Consumption.valueHelpDefinition: [{ entity: { name: 'ZTDHIVYA_STUDENT', element: 'Rollno' } }]
  key Rollno,
  Name,
  Standard,
  Mark,
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
    user.lastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _BaseEntity
}

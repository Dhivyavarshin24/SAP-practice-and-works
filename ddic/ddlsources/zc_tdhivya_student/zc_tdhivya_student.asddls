@Metadata.allowExtensions: true
@ObjectModel.dataCategory: #VALUE_HELP
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZTDHIVYA_STUDENT'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TDHIVYA_STUDENT
  provider contract transactional_query
  as projection on ZR_TDHIVYA_STUDENT
  association [1..1] to ZR_TDHIVYA_STUDENT as _BaseEntity on $projection.Rollno = _BaseEntity.Rollno
{
  key Rollno,
  Name,
  Phone,
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

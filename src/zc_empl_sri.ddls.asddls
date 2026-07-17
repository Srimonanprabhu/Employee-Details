@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view Employee'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_EMPL_SRI as projection on ZI_EMPl_SRI
{
//    key EmpId,
//    FirstName,
//    LastName,
//    DeptId,
  @UI.lineItem: [{ position: 10 }]
  key EmpId,
  @UI.lineItem: [{ position: 20 }]
  FirstName,
  @UI.lineItem: [{ position: 30 }]
  LastName,
  @UI.lineItem: [{ position: 40 }]
  DeptId,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Department :redirected to parent ZC_DEPT_SRI
}

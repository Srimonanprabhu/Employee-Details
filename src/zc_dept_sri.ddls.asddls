@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
  typeName: 'Department',
  typeNamePlural: 'Departments'
}

define root view entity ZC_DEPT_SRI as projection on ZI_DEPT_SRI
{
    //key DeptId,
    //DeptName,
    //Location,
      @UI.facet: [
  {
    id: 'EMPLOYEE',
    type: #LINEITEM_REFERENCE,
    label: 'Employees',
    position: 10,
    targetElement: '_Employee'
  }
]
    @UI.lineItem: [{ position: 10 }]
    key DeptId,
    @UI.lineItem: [{ position: 20 }]
    DeptName,
    @UI.lineItem: [{ position: 30 }]
    Location,
  
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Employee :redirected to composition child ZC_EMPL_SRI
}

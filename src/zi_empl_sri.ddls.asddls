@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD employee'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EMPl_SRI as select from zdbt_sri_emp
association to parent ZI_DEPT_SRI as _Department
on $projection.DeptId = _Department.DeptId
{
    key emp_id as EmpId,
    first_name as FirstName,
    last_name as LastName,
    dept_id as DeptId,
    _Department,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt
}

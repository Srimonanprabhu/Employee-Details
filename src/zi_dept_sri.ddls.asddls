@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD department'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_DEPT_SRI as select from zdbt_sri_dept
composition [0..*] of ZI_EMPl_SRI as _Employee
{
    key dept_id as DeptId,
    dept_name as DeptName,
    location as Location,
    _Employee,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt
}

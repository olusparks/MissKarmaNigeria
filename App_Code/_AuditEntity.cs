using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for _AuditEntity
/// </summary>
public class _AuditEntity
{
    public DateTime CreatodOn { get; set; }
    public DateTime ModifiedOn { get; set; }
    public string CreatedBy { get; set; }
    public string ModifiedBy { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public _AuditEntity()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
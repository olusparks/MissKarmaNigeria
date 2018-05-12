using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for _BaseEntity
/// </summary>
public class _BaseEntity : _AuditEntity
{
    public int ID { get; set; }
    public string Firstname { get; set; }
    public string Lastname { get; set; }
    public string Email { get; set; }

    public _BaseEntity()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
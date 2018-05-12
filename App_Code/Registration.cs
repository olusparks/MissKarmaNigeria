using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mknRegistration
/// </summary>
public class mknRegistration : _BaseEntity
{
    public string ImageLocation { get; set; }
    public byte ImageFile { get; set; }
    public mknRegistration()
    {
        _AuditEntity audit = new _AuditEntity()
        {
            CreatodOn = DateTime.Now
        };
        //
        // TODO: Add constructor logic here
        //
    }
}
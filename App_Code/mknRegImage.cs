using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mknRegImage
/// </summary>
public class mknRegImage : _AuditEntity
{
    public int Id { get; set; }
    public byte[] ImageFile { get; set; }
    public string ImageExtenstion { get; set; }

    public mknRegImage()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
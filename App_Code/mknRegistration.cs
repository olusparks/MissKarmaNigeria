using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mknRegistration
/// </summary>
public class mknRegistration : _BaseEntity
{
    public string MaritalStatus { get; set; }
    public string Phone { get; set; }
    public string Address { get; set; }
    public double Height { get; set; }
    public double Weight { get; set; }
    public string ImageLocation { get; set; }
    public byte ImageFile { get; set; }
    public DateTime DOB { get; set; }
    public mknRegistration()
    {
        CreatodOn = DateTime.Now;
        //
        // TODO: Add constructor logic here
        //
    }
}
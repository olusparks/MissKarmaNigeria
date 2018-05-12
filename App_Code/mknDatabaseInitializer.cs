using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
/// <summary>
/// Summary description for mknDatabaseInitializer
/// </summary>
public class mknDatabaseInitializer : CreateDatabaseIfNotExists<mkn_context>
{
    protected override void Seed(mkn_context context)
    {
        base.Seed(context);
    }
    public mknDatabaseInitializer() 
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
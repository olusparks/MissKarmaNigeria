using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mkn_context
/// </summary>
public class mkn_context : DbContext
{
    

    public mkn_context() : base("DBCS")
    {
        
    }

    public DbSet<mkncontactus> ContactUs { get; set; }
    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        //base.OnModelCreating(modelBuilder);
    }
}
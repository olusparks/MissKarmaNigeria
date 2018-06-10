using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegRepository
/// </summary>
public class RegRepository : Repository<mknRegistration>, IRegRepository
{
    public mkn_context mknContext
    {
        get { return Context as mkn_context; }
    }
    public RegRepository(mkn_context context) : base(context)
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
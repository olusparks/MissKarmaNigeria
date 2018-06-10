using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UnitOfWork
/// </summary>
public class UnitOfWork : IUnitOfWork
{
    private readonly mkn_context _context;

    public UnitOfWork(mkn_context context)
    {
        _context = context;
        Registration = new RegRepository(_context);
    }

    public IRegRepository Registration
    {
        get; set;
    }

    public void Dispose()
    {
        _context.Dispose();
    }

    public int SaveChanges()
    {
        return _context.SaveChanges();
    }
}
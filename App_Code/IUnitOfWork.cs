using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IUnitOfWork
/// </summary>
public interface IUnitOfWork : IDisposable
{
   IRegRepository Registration { get; }
   int SaveChanges();
}
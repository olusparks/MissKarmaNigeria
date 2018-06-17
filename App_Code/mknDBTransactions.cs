using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mknDBTransactions
/// </summary>
public class mknDBTransactions
{
    private static mkn_context context = new mkn_context();
    private static UnitOfWork UoW = new UnitOfWork(context);

    public mknDBTransactions()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    #region Registration
    public static List<mknRegistration> GetRegistrationList()
    {
        //Implementing UnitOfWork
        //UoW.Registration.GetAll().Where(r => r.IsActive == true && r.IsDeleted == false).ToList();

        List<mknRegistration> mknRegister = new List<mknRegistration>(); 
        try
        {
            mknRegister =  context.Registration.Where(r => r.IsActive == true && r.IsDeleted == false).ToList();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        return mknRegister;
    }



    public static mknRegistration GetRegistrationById(int id)
    {
        //Implementing UnitOfWork
        //UoW.Registration.Find(r => r.ID == id & r.IsActive == true && r.IsDeleted == false).FirstOrDefault();

        mknRegistration mknRegister = null;
        try
        {
            mknRegister = context.Registration.FirstOrDefault(r => r.ID == id && r.IsActive == true && r.IsDeleted == false);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        return mknRegister;
    }

    public static int UpdateRegistration(mknRegistration mknReg)
    {
        int response = 0;
        try
        {
            mknRegistration mknRegistration = context.Registration.FirstOrDefault(r => r.ID == mknReg.ID);
            if (mknRegistration != null)
            {
                mknRegistration.Firstname = mknReg.Firstname;
                mknRegistration.Lastname = mknReg.Lastname;
                mknRegistration.FullName = mknReg.Firstname + " " + mknReg.Lastname;
                mknRegistration.Email = mknRegistration.Email;
                mknRegistration.Height = mknReg.Height;
                mknRegistration.Weight = mknReg.Weight;
                mknRegistration.DOB = mknReg.DOB;
                mknRegistration.Address = mknReg.Address;
                mknRegistration.Phone = mknReg.Phone;
                mknRegistration.MaritalStatus = mknReg.MaritalStatus;
                mknRegistration.ModifiedOn = DateTime.Now;
                mknRegistration.ModifiedBy = mknReg.ModifiedBy;
                response = context.SaveChanges();
            }
            return response;
        }
        catch (Exception)
        {
            return response;
            //throw;
        }
    }

    public static int AddRegistration(mknRegistration mknReg)
    {
        int response = 0;
        try
        {
            mknReg.FullName = mknReg.Firstname + " " + mknReg.Lastname;
            mknReg.IsActive = true;
            mknReg.IsDeleted = false;
            context.Registration.Add(mknReg);
            response = context.SaveChanges();
            return response;
        }
        catch(Exception ex)
        {
            //return response;
            throw new Exception(ex.Message);
        }
    }

    public static int DeleteRegistration(int id, out string fullname)
    {
        int response = 0;
        try
        {
            mknRegistration mknRegistration = context.Registration.FirstOrDefault(r => r.ID == id);
            fullname = mknRegistration.FullName;
            mknRegistration.IsDeleted = true;
            mknRegistration.ModifiedOn = DateTime.Now;
            response = context.SaveChanges();
        }
        catch (Exception ex)
        {
            //return response;
            throw new Exception(ex.Message);
        }
        return response;
    }
    #endregion

    #region ImageRegistration
    public static int AddImageRegistration(mknRegImage mknRegImg)
    {
        int response = 0;
        try
        {
            mknRegImg.IsActive = true;
            mknRegImg.IsDeleted = false;
            context.mknRegImages.Add(mknRegImg);
            response = context.SaveChanges();
            return response;
        }
        catch (Exception ex)
        {
            //return response;
            throw new Exception(ex.Message);
        }
    }
    #endregion
}
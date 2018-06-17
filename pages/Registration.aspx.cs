using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_Registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            HideDivs();
            RegistrationAdd.Visible = true;
        }
    }

    #region Helper Methods
    public void HideDivs()
    {
        RegistrationAdd.Visible = false;
        ViewRegistrationList.Visible = false;
        RegistrationEdit.Visible = false;
        RegistrationView.Visible = false;
    }

    public void ShowSuccessMessage(string message = null)
    {
        AlertDiv.Attributes["class"] = "alert alert-success alert-dismissable";
        AlertMessage.Text = message == null ? "Registration Sucessful. <br> We will get back to you. Thank you." : message;
        AlertContainer.Visible = true;
    }

    public void ShowErrorMessage(Exception ex = null)
    {
        AlertMessage.Text = ex.Message == null ? "Error!!! <br> Please try again." : ex.Message;
        AlertContainer.Visible = true;
    }

    public void InsertImage(List<byte[]> imgList)
    {

        HttpPostedFile postedFile = null;
        foreach (var item in imgList)
        {
            postedFile.InputStream.Read(item, 0, item.Length);

            //Do the insert into DB here
            mknDBTransactions.AddImageRegistration(new mknRegImage()
            {
                ImageFile = item,
                ImageExtenstion = "png"
            });
        }
        
    }


    public void BindGrid()
    {
        try
        {
            var data = mknDBTransactions.GetRegistrationList();
            GridViewReg.DataSource = data;
            GridViewReg.DataBind();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    #endregion

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            mknRegistration mknReg = new mknRegistration()
            {
                Firstname = txtfname.Text.Trim(),
                Lastname = txtlname.Text.Trim(),
                Height = Convert.ToDouble(txtHeight.Text.Trim()),
                Weight = Convert.ToDouble(txtWeight.Text.Trim()),
                Email = txtemail.Text.Trim(),
                DOB = Convert.ToDateTime(txtDOB.Text),
                Address = txtAddress.Text.Trim(),
                Phone = txtPhone.Text.Trim(),
                MaritalStatus = ddlMaritalStatus.SelectedItem.Text.Trim()
            };
            //Call AddRegistration
            int result = mknDBTransactions.AddRegistration(mknReg);
            if (result > 0)
            {
                //Clear fields
                #region Clear
                txtDOB.Text = string.Empty;
                txtemail.Text = string.Empty;
                txtfname.Text = string.Empty;
                txtHeight.Text = string.Empty;
                txtlname.Text = string.Empty;
                txtWeight.Text = string.Empty;
                #endregion

                InsertImage(imgList);
                //Display success message.
                ShowSuccessMessage();
            }
        }
        catch (Exception ex)
        {
            ShowErrorMessage(ex);
        }
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            int mknRegId = Convert.ToInt32((btn.CommandArgument.ToString()));
            mknRegistration mknReg = mknDBTransactions.GetRegistrationById(mknRegId);

            if (mknReg != null)
            {
                //Populate Table
                lblFullName.Text = mknReg.FullName;
                lblfname.Text = mknReg.Firstname;
                lbllname.Text = mknReg.Lastname;
                lblEmail.Text = mknReg.Email;
                lblDOB.Text = mknReg.DOB.ToString("yyyy-MM-dd");
                lblAddress.Text = mknReg.Address;
                lblHeight.Text = mknReg.Height.ToString();
                lblWeight.Text = mknReg.Weight.ToString();
                lblStatus.Text = mknReg.MaritalStatus;
            }
        }
        catch (Exception ex)
        {
            ShowErrorMessage(ex);
        }

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            int mknRegId = Convert.ToInt32((btn.CommandArgument.ToString()));
            mknRegistration mknReg = mknDBTransactions.GetRegistrationById(mknRegId);
            ViewState["MKNRegId"] = mknRegId;

            if (mknReg != null)
            {
                txtfnameE.Text = mknReg.Firstname;
                txtlnameE.Text = mknReg.Lastname;
                txtDOBE.Text = mknReg.DOB.ToString("yyyy-MM-dd");
                txtEmailE.Text = mknReg.Email;
                txtPhone.Text = mknReg.Phone;
                ddlMaritalStatusE.SelectedItem.Text = mknReg.MaritalStatus;
                txtHeightE.Text = mknReg.Height.ToString();
                txtWeightE.Text = mknReg.Weight.ToString();
                txtAddressE.Text = mknReg.Address;
            }
        }
        catch (Exception ex)
        {
            ShowErrorMessage(ex);
        }

    }
    protected void btnDeActivate_Click(object sender, EventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            int mknRegId = Convert.ToInt32((btn.CommandArgument.ToString()));
            string fullname = string.Empty;
            //Delete
            int result = mknDBTransactions.DeleteRegistration(mknRegId, out fullname);
            if (result > 0)
            {
                //Bind Data to Grid
                BindGrid();
                ShowSuccessMessage(string.Format("Contestant: {0} has been deleted", fullname));
            }
        }
        catch (Exception ex)
        {
            ShowErrorMessage(ex);
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            int result = mknDBTransactions.UpdateRegistration(new mknRegistration()
            {
                Firstname = txtfnameE.Text.Trim(),
                Lastname = txtlnameE.Text.Trim(),
                DOB = Convert.ToDateTime(txtDOBE.Text),
                Email = txtEmailE.Text.Trim(),
                Phone = txtPhoneE.Text.Trim(),
                MaritalStatus = ddlMaritalStatusE.SelectedItem.Text,
                Address = txtAddressE.Text.Trim(),
                Weight = Convert.ToDouble(txtWeightE.Text),
                Height = Convert.ToDouble(txtHeightE.Text)
            });

            if (result > 0)
            {
                BindGrid();
                HideDivs();
                ViewRegistrationList.Visible = true;
                ShowSuccessMessage(string.Format("Contestant: {0} {1} Updated", txtfnameE.Text, txtlnameE.Text));
            }
        }
        catch (Exception ex)
        {
            ShowErrorMessage(ex);
        }
    }

    List<byte[]> imgList = new List<byte[]>();
    protected void ajxUpload_UploadCompleteAll(object sender, AjaxControlToolkit.AjaxFileUploadCompleteAllEventArgs e)
    {
       
    }

    protected void ajxUpload_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        //Dictionary<string, byte[]> images = new Dictionary<string, byte[]>();
        //images.Add(e.FileName.ToLower(), e.GetContents());

        imgList.Add(e.GetContents());
        //ViewState["imgDictionary"] = imgList;
    }
}
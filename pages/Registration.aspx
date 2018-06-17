<%@ Page Language="C#" MasterPageFile="~/pages/mknmaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="pages_Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="headerBanner" runat="server">
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image: url(../images/img_bg_mkn1.jpg);">
        <div class="overlay"></div>
        <div class="fh5co-container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="display-t">
                        <div class="display-tc animate-box" data-animate-effect="fadeIn">
                            <h1>Contestant Registration</h1>
                            <!--<h2>Free HTML5 templates Made by <a href="http://freehtml5.co" target="_blank">FreeHTML5.co</a></h2>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</asp:Content>


<asp:Content ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="fh5co-section" style="padding: 4em !important">

        <div class="row text-center" id="AlertContainer" runat="server" visible="false">
            <div class="col-md-12">
                <%--aria-hidden="true"--%>
                <div class="alert alert-danger alert-dismissable" runat="server" id="AlertDiv">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span>&times;</span></button>
                    <asp:Literal runat="server" ID="AlertMessage" Text="Error!! <br> Please try again"></asp:Literal>
                </div>
            </div>
        </div>

        <form action="#" runat="server">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <div class="container">
                <div class="row" runat="server" id="RegistrationAdd">
                    <div class="col-md-12 col-sm-12 animate-box">
                        <h3>Who Are You?</h3>

                        <div class="row form-group">
                            <div class="col-md-4">
                                <label for="fname">First Name</label>
                                <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Your firstname" required></asp:TextBox>
                                <%--<input type="text" id="fname" class="form-control" placeholder="Your firstname">--%>
                            </div>
                            <div class="col-md-4">
                                <label for="lname">Last Name</label>
                                <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Your lastname" required></asp:TextBox>
                                <%--<input type="text" id="lname" class="form-control" placeholder="Your lastname">--%>
                            </div>
                            <div class="col-md-4">
                                <label for="DOB">Date of Birth</label>
                                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" class="form-control" placeholder="Your Date of Birth" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-4">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Your email address" required></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="phone">Telephone</label>
                                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" class="form-control" placeholder="Your Phone" required></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="mstatus">Marital Status</label>
                                <asp:DropDownList ID="ddlMaritalStatus" runat="server" class="form-control">
                                    <asp:ListItem Text="Select Marital Status..." Value="0">Select Marital Status...</asp:ListItem>
                                    <asp:ListItem Text="Single" Value="1">Single</asp:ListItem>
                                    <asp:ListItem Text="Married" Value="2">Married</asp:ListItem>
                                    <asp:ListItem Text="Divorced" Value="3">Divorced</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-6">
                                <label for="height">Height</label>
                                <asp:TextBox ID="txtHeight" runat="server" class="form-control" placeholder="Your Height" required></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="weight">Weight</label>
                                <asp:TextBox ID="txtWeight" runat="server" class="form-control" placeholder="Your Weight" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="address">Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" class="form-control" placeholder="Your Address" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="image">Image</label>
                                <asp:FileUpload ID="imageUpload" runat="server" class="form-control" />
                                <%--<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">--%>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="image">Image</label>
                                <ajaxToolkit:AjaxFileUpload ID="ajxUpload"  Mode="Auto" MaximumNumberOfFiles="3" MaxFileSize="3072" runat="server"  AllowedFileTypes="png, jpeg, jpg" OnUploadCompleteAll="ajxUpload_UploadCompleteAll" OnUploadComplete="ajxUpload_UploadComplete"/>
                                <%--<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">--%>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-7 text-right">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row" runat="server" id="ViewRegistrationList">
                    <asp:GridView ID="GridViewReg" runat="server" AutoGenerateColumns="false" CssClass="table  table-bordered table-condensed text-center" DataKeyNames="" EmptyDataText="There are no data records to display." AllowPaging="True">
                        <Columns>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text="Label"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Age">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text="Label"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text="Label"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="center text-center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <div class="form-actions text-center">
                                        <asp:Button CommandArgument='<%# Eval("EmployeeID") %>' runat="server" OnClick="btnView_Click" Text="View" ID="btnView" CssClass='<%# (Convert.ToBoolean(Eval("IsActive")) == true  ? "btn btn-sm btn-primary" : "btn btn-sm btn-primary disabled") %>' />
                                        <asp:Button CommandArgument='<%# Eval("EmployeeID") %>' runat="server" OnClick="btnEdit_Click" Text="Edit" ID="btnEdit" CssClass='<%# (Convert.ToBoolean(Eval("IsActive")) == true  ? "btn btn-sm btn-warning" : "btn btn-sm btn-warning disabled") %>' />
                                        <asp:Button CommandArgument='<%# Eval("EmployeeID") %>' runat="server" OnClick="btnDeActivate_Click" Text='<%# (Convert.ToBoolean(Eval("IsActive")) == true  ? "Deactivate" : "Activate") %>' ID="btnDeactivate" CssClass='<%# (Convert.ToBoolean(Eval("IsActive")) == true  ? "btn btn-sm btn-danger" : "btn btn-sm btn-success") %>' />--%>
                                        <asp:Button CommandArgument='<%# Eval("EmployeeID") %>' runat="server" OnClick="btnDelete_Click" Text="Delete" ID="btnDelete" CssClass='<%# (Convert.ToBoolean(Eval("IsActive")) == true  ? "btn btn-sm btn-danger" : "btn btn-sm btn-danger disabled") %>' />
                                    </div>
                                </ItemTemplate>

                                <HeaderStyle HorizontalAlign="Center" CssClass="center text-center"></HeaderStyle>

                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="row" runat="server" id="RegistrationEdit">
                    <div class="col-md-12 col-sm-12 animate-box">
                        <h3>Who Are You?</h3>

                        <div class="row form-group">
                            <div class="col-md-4">
                                <label for="fname">First Name</label>
                                <asp:TextBox ID="txtfnameE" runat="server" class="form-control" placeholder="Your firstname" required></asp:TextBox>
                                <%--<input type="text" id="fname" class="form-control" placeholder="Your firstname">--%>
                            </div>
                            <div class="col-md-4">
                                <label for="lname">Last Name</label>
                                <asp:TextBox ID="txtlnameE" runat="server" class="form-control" placeholder="Your lastname" required></asp:TextBox>
                                <%--<input type="text" id="lname" class="form-control" placeholder="Your lastname">--%>
                            </div>
                            <div class="col-md-4">
                                <label for="DOB">Date of Birth</label>
                                <asp:TextBox ID="txtDOBE" runat="server" TextMode="Date" class="form-control" placeholder="Your Date of Birth" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-4">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txtEmailE" runat="server" class="form-control" placeholder="Your email address" required></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="phone">Telephone</label>
                                <asp:TextBox ID="txtPhoneE" runat="server" TextMode="Phone" class="form-control" placeholder="Your Phone" required></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="mstatus">Marital Status</label>
                                <asp:DropDownList ID="ddlMaritalStatusE" runat="server" class="form-control">
                                    <asp:ListItem Text="Select Marital Status..." Value="0">Select Marital Status...</asp:ListItem>
                                    <asp:ListItem Text="Single" Value="1">Single</asp:ListItem>
                                    <asp:ListItem Text="Married" Value="2">Married</asp:ListItem>
                                    <asp:ListItem Text="Divorced" Value="3">Divorced</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-6">
                                <label for="height">Height</label>
                                <asp:TextBox ID="txtHeightE" runat="server" class="form-control" placeholder="Your Height" required></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="weight">Weight</label>
                                <asp:TextBox ID="txtWeightE" runat="server" class="form-control" placeholder="Your Weight" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="address">Address</label>
                                <asp:TextBox ID="txtAddressE" runat="server" TextMode="MultiLine" Rows="3" class="form-control" placeholder="Your Address" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="image">Image</label>
                                <asp:FileUpload ID="FileUploadE" runat="server" class="form-control" />
                                <%--<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">--%>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-6 text-left">
                                <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary" CausesValidation="false" />
                            </div>
                            <div class="col-md-6 text-right">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-primary" OnClick="btnUpdate_Click" />
                            </div>
                            <%--<input type="submit" value="Send Message" class="btn btn-primary" runat="server">--%>
                        </div>

                    </div>
                </div>

                <div class="row" id="RegistrationView" runat="server">
                    <div class="panel panel-default">
                        <div class="panel-heading text-uppercase text-center">
                            <asp:Label ID="lblFullName" runat="server" Text="jide bantale"></asp:Label>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-responsive">
                                <tr>
                                    <td>Firstname</td>
                                    <td>
                                        <asp:Label ID="lblfname" runat="server" Text="Firstname"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Lastname</td>
                                    <td>
                                        <asp:Label ID="lbllname" runat="server" Text="Lastname"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>D.O.B</td>
                                    <td>
                                        <asp:Label ID="lblDOB" runat="server" Text="12-02-1990"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        <asp:Label ID="lblEmail" runat="server" Text="jide@gmail.com"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Height</td>
                                    <td>
                                        <asp:Label ID="lblHeight" runat="server" Text="5.3 inches"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Weight</td>
                                    <td>
                                        <asp:Label ID="lblWeight" runat="server" Text="45kg"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Marital Status</td>
                                    <td>
                                        <asp:Label ID="lblStatus" runat="server" Text="Single"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Telephone</td>
                                    <td>
                                        <asp:Label ID="lblPhone" runat="server" Text="08138549501"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <asp:Label ID="lblAddress" runat="server" Text="71i Lekki Freedom way, Ikate, Lekki Lagos"></asp:Label></td>
                                </tr>
                            </table>
                            <div class="row form-group">
                                <div class="col-md-3">
                                    <div class="thumbnail">
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="footer" runat="server">
    <div id="fh5co-started" class="fh5co-bg" style="background-image: url(../images/img_bg_mkn3.jpg);">
        <footer id="fh5co-footer" role="contentinfo" style="padding-top: 0px; padding-bottom: 0px;">
            <div class="container">
                <div class="row copyright">
                    <div class="col-md-12 text-center">
                        <p>
                            <small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small>
                            <small class="block">Designed by <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
                        </p>
                        <p>
                            <ul class="fh5co-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>


</asp:Content>



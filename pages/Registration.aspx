<%@ Page Language="C#" MasterPageFile="~/pages/mknmaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="pages_Registration" %>

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
    <div class="fh5co-section"style="padding: 4em !important">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 animate-box">
                    <h3>Who Are You?</h3>
                    <form action="#" runat="server">
                        <div class="row form-group">
                            <div class="col-md-6">
                                <label for="fname">First Name</label>
                                <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Your firstname" required></asp:TextBox>
                                <%--<input type="text" id="fname" class="form-control" placeholder="Your firstname">--%>
                            </div>
                            <div class="col-md-6">
                                <label for="lname">Last Name</label>
                                <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Your lastname" required></asp:TextBox>
                                <%--<input type="text" id="lname" class="form-control" placeholder="Your lastname">--%>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Your email address" required></asp:TextBox>
                                <%--<input type="text" id="email" class="form-control" placeholder="Your email address">--%>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="image">Image</label>
                                <asp:FileUpload ID="imageUpload" runat="server" />
                                <%--<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">--%>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" class="btn btn-primary" />
                            <%--<input type="submit" value="Send Message" class="btn btn-primary" runat="server">--%>
                        </div>
                    </form>
                </div>
            </div>

        </div>
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
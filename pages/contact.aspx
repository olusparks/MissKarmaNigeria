<%@ Page Language="C#" MasterPageFile="~/pages/mknmaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="pages_contact" %>

<asp:Content ContentPlaceHolderID="headerBanner" runat="server">
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(../images/img_bg_mkn1.jpg);">
                <div class="overlay"></div>
                <div class="fh5co-container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="display-t">
                                <div class="display-tc animate-box" data-animate-effect="fadeIn">
                                    <h1>Contact Us</h1>
                                    <!--<h2>Free HTML5 templates Made by <a href="http://freehtml5.co" target="_blank">FreeHTML5.co</a></h2>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="fh5co-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-6 animate-box">
                    <h3>Get In Touch</h3>
                    <form action="#">
                        <div class="row form-group">
                            <div class="col-md-6">
                                <label for="fname">First Name</label>
                                <input type="text" id="fname" class="form-control" placeholder="Your firstname">
                            </div>
                            <div class="col-md-6">
                                <label for="lname">Last Name</label>
                                <input type="text" id="lname" class="form-control" placeholder="Your lastname">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="email">Email</label>
                                <input type="text" id="email" class="form-control" placeholder="Your email address">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="subject">Subject</label>
                                <input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="message">Message</label>
                                <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Write us something"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Send Message" class="btn btn-primary">
                        </div>
                    </form>
                </div>
                <div class="col-md-5 col-md-pull-5 animate-box">

                    <div class="fh5co-contact-info">
                        <h3>Contact Information</h3>
                        <ul>
                            <li class="address">198 West 21th Street,
                                <br>
                                Suite 721 Lagos</li>
                            <li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
                            <li class="email"><a href="mailto:jide.bantale@gmail.com">jide.bantale@gmail.com</a></li>
                            <!--<li class="url"><a href="http://gettemplates.co">gettemplates.co</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="footer" runat="server">
    <div id="fh5co-started" class="fh5co-bg" style="background-image:url(../images/img_bg_mkn3.jpg);">
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



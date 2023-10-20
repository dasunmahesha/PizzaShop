<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid sticky-top">
    <div>
        <nav class="navbar navbar-light bg-light navbar-expand-sm">
              <a class="navbar-brand" href="#">
                   <img src="Images/mylogo.png" class="d-inline-block align-top" alt="" width="140" height="100">
                  
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <asp:Button ID="Lgout" runat="server" Text="Log Out" CssClass="btn btn-success" OnClick="Lgout_Click" />
                  </li>
                </ul>
              </div>
        </nav>
    </div>
</div>
 
<section id="pizzaSlider">
   <div class="container-fluid">
      <!-- slidder-->
      <div id="carouselExampleIndicators" class="carousel slide rounded mx-auto d-block" data-ride="carousel">
         <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class=""></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>
         </ol>
         <div class="carousel-inner">
            <div class="carousel-item active carousel-item-left">
               <img src="Images/SLIDDER01IMG.jpg" class="d-block w-100" alt="slidder image 01">
            </div>
            <div class="carousel-item carousel-item-next carousel-item-left">
               <img src="Images/slidder2img.jpg" class="d-block w-100" alt="slidder image 02">
            </div>
            <div class="carousel-item">
               <img src="Images/SLIDDER03IMG.jpg" class="d-block w-100" alt="slidder image 03">
            </div>
         </div>
         <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
         </button>
         <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
         </button>
      </div>
      <p style="padding-top:90px"></p>
   </div>
</section>

   <!--pizza list-->
 <div>
   <h2 class="font-weight-bold text-center " >SIGNATURE </h2>
</div>

<div class="container">
   <div class="row">
      <div class="col-12">
         <div class="centerslider">

             <%
                 int a = 0;
                 foreach (string n in name){
            %>
            <div>
               <div class="card">
                  <img ID="Imglink" src="Images/Pizza/<% Response.Write(Imgs[a]); %>"  class="card-img-top"/>
                  <div class="card-body">
                     <h5 class="card-title text-light bg-dark text-center"><%  Response.Write(n);  %></h5>
                     <p class="card-text text-center "><% Response.Write(pizdetail[a]); %></p>
                     <div class="text-center" >
                         <p><%  Response.Write(Price[a]);  %></p>
                     </div>
                     <div class="text-center">
                        <asp:Button ID="Button1" CssClass="btn btn-info btn-lg mt-4" runat="server" Text="Oder Now" />
                      </div>
                  </div>
               </div>
            </div> 

            <%
                    a++;
                }
             %>

         </div>
      </div>
   </div>
</div>
    <br /><br /><br /><br /><br />
    <!--footer-->
<section class="bg-light">
    <footer>
        <div class="container-fluid">
            <div class="row align-content-center align-items-center">
            <div class="col-sm">
                <h5 class="text-center">SOF/20/B1/41</h5>
            </div>
                <div class="col-sm footer-copyright text-center py-3">
                    <h5>H.A.D.M.C.Kumara</h5>
            </div>
            <div class="col-sm">
                <h5 class="text-center "> Contact us : 0114578856</h5>
            </div>
            </div>
        </div>
    </footer>
</section>

</asp:Content>


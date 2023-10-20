<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <section class="vh-100 has-bg-img" style="background-image:url('Images/lgbg.jpg');background-repeat:no-repeat;width:100% ; background-size: 100%;">
      <div class="container py-5 h-100">

        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card shadow-2-strong" style="border-radius: 1rem;">
              <div class="card-body p-5 text-center">

                <h3 class="mb-5">Sign in</h3>

                <div class="form-outline mb-4">
                  <asp:TextBox ID="TypeEmailX" runat="server" CssClass="form-control form-control-lg" Placeholder="Username"></asp:TextBox>
                  <asp:Label ID="Unametxt" runat="server" CssClass="form-label" Text="Email"></asp:Label>
                </div>
                 

                <div class="form-outline mb-4">
                  <asp:TextBox ID="TypePassword" TextMode="Password" runat="server" CssClass="form-control form-control-lg" Placeholder="Password"></asp:TextBox>
                    
                  <asp:Label ID="Pwordtxt" runat="server" CssClass="form-label" Text="Password"></asp:Label>
                </div>

                 <asp:Label ID="Label3" runat="server" CssClass="form-label text-danger " Text=""></asp:Label>

                <asp:Button ID="Submit" runat="server" Text="Login" CssClass="btn btn-primary btn-lg btn-block" OnClick="Submit_Click" />
                <hr class="my-4">

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



</asp:Content>


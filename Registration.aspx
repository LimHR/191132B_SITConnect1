<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="prac.Registration" %>


<!DOCTYPE html>
<script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_pwd.ClientID %>').value;
            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password Length Must be at Least 12 characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too short");
            }
            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }
            else if (str.search(/[A_Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 uppercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_uppercase");
            }
            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 lowercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_lowercase");
            }
            else if (str.search(/[^a-zA-Z0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_specialcharacter");
            }
            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!"
            document.getElementById("lbl_pwdchecker").style.color = "Blue";
        }
</script>


<form id="form1" runat="server">


<p>
    <h1>Account Registration</h1>Email<asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
        <asp:Label ID ="lbl_emailchecker" runat="server" Text=""></asp:Label>
    </p>
    <p>
        First Name<asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
    </p>
    <p>
        Last Name:<asp:TextBox ID="tb_lastName" runat="server"></asp:TextBox>
    </p>
    <p>
        Password<asp:TextBox ID="tb_pwd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID ="lbl_pwdchecker" runat="server" Text=""></asp:Label>
    </p>
    <p>
        Credit Card<asp:TextBox ID="tb_creditcard" runat="server"></asp:TextBox>
    </p>
    <p>
        DOB:<asp:TextBox ID="tb_DOB" runat="server"></asp:TextBox>
    </p>
    <p>Photo:<asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
    <p>
        <asp:Button ID="btn_submit" runat="server" Text="Submit" onclick="btn_Submit_Click" />
    </p>
</form>





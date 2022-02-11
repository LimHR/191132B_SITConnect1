<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="prac.Registration" %>


<!DOCTYPE html>
<script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_pwd.ClientID %>').value;
            if (str.length < 12) {
                document.getElementById("lbl_pwdcheckerhr").innerHTML = "Password Length Must be at Least 12 characters";
                document.getElementById("lbl_pwdcheckerhr").style.color = "Red";
                return ("too short");
            }
            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdcheckerhr").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdcheckerhr").style.color = "Red";
                return ("no_number");
            }
            else if (str.search(/[A_Z]/) == -1) {
                document.getElementById("lbl_pwdcheckerhr").innerHTML = "Password require at least 1 uppercase";
                document.getElementById("lbl_pwdcheckerhr").style.color = "Red";
                return ("no_uppercase");
            }
            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdcheckehr").innerHTML = "Password require at least 1 lowercase";
                document.getElementById("lbl_pwdcheckerhr").style.color = "Red";
                return ("no_lowercase");
            }
            else if (str.search(/[^a-zA-Z0-9]/) == -1) {
                document.getElementById("lbl_pwdcheckerhr").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbl_pwdcheckerhr").style.color = "Red";
                return ("no_specialcharacter");
            }
            document.getElementById("lbl_pwdcheckerhr").innerHTML = "Excellent!"
            document.getElementById("lbl_pwdcheckerhr").style.color = "Blue";
        }
</script>


<form id="form1" runat="server">


<p>
    <h1>Account Registration</h1>Email<asp:TextBox ID="tb_emailhr" runat="server"></asp:TextBox>
        <asp:Label ID ="lbl_emailcheckerhr" runat="server" Text=""></asp:Label>
    </p>
    <p>
        First Name<asp:TextBox ID="tb_firstnamehr" runat="server"></asp:TextBox>
    </p>
    <p>
        Last Name:<asp:TextBox ID="tb_lastNamehr" runat="server"></asp:TextBox>
    </p>
    <p>
        Password<asp:TextBox ID="tb_pwdhr" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID ="lbl_pwdcheckerhr" runat="server" Text=""></asp:Label>
    </p>
    <p>
        Credit Card<asp:TextBox ID="tb_creditcardhr" runat="server"></asp:TextBox>
    </p>
    <p>
        DOB:<asp:TextBox ID="tb_DOBhr" runat="server"></asp:TextBox>
    </p>
    <p>Photo:<asp:FileUpload ID="FileUpload1hr" runat="server" />
            </p>
    <p>
        <asp:Button ID="btn_submithr" runat="server" Text="Submit" onclick="btn_Submithr_Click" />
    </p>
</form>





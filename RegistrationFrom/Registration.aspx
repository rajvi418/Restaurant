<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationFrom.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Bootstrap/dist/css/bootstrap.min.css" />
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #000;
            color: #fff;
        }

        .registration_form {
            border: 1px solid rgb(255, 255, 255, 0.20);
            border-radius: 10px;
            background-color: rgb(0, 0, 0, 0.18);
            box-shadow: 0px 0px 10px rgb(255, 255, 255, 0.30);
            backdrop-filter: blur(10px);
            padding: 30px;
            width: 50%;
            margin: auto;
            margin-top: 50px;
            text-align: center;
        }

        .heading h1 {
            text-align: center;
            margin-bottom: 60px;
        }

        .detailSection {
            width: 100%;
            margin: auto;
        }

        .flexsection {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
            text-align: left;
        }

            .flexsection .inputdetails .inputbox {
                width: 100%;
            }

        .inputdetails {
            align-content: start;
            width: 50%;
            padding: 0px 10px;
        }

        .title {
            font-size: 20px;
        }

        .inputdetails .inputbox {
            width: 50%;
            height: 50px;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
            text-align: left;
            padding: 0px 15px;
        }

        .gender {
            display: flex;
            width: 50%;
            flex-direction: column;
            padding: 0px 10px;
            justify-content: space-between;
        }

            .gender .gender-input {
                font-size: 18px;
                display: flex;
                width: 100%;
                margin: 0;
                margin-bottom: 6px;
                justify-content: space-around;
            }

        .email-inputdetails {
            align-content: center;
            width: 100%;
            padding: 0px 10px;
        }

            .email-inputdetails .email_inputbox {
                width: 100%;
                height: 50px;
                border: none;
                border-radius: 5px;
                margin-bottom: 10px;
                text-align: left;
                padding: 0px 15px;
            }


        /*       /* age*/
        .agebox {
            width: 100%;
            height: 50px;
            border: none;
            display: block;
            border-radius: 5px;
            margin-bottom: 10px;
            text-align: left;
            padding: 0px 15px;
        }
        .submitButton {
            width: 50%;
            height: 50px;
            border: none;
            border-radius: 15px;
            background-color: transparent;
            border: 2px solid white;
            color: white;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <section class="registration_form">
        <form id="form1" runat="server" enableviewstate="False">
            <div class="heading">
                <h1>Registration Form</h1>
            </div>

            <section class="detailSection" id="regitrationpage">

                <div class="flexsection">
                    <!-- class title name is temporary  -->
                    <div class="inputdetails">
                        <!-- class title name is temporary  -->
                        <!-- i stands for input -->
                        <asp:Label ID="firstname" class="title" runat="server" Text="First Name:"></asp:Label>
                        <asp:TextBox ID="ifname" class="inputbox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="firstNameRequireddValidator" class="d-block" runat="server" ControlToValidate="ifname" ErrorMessage="First Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="inputdetails">
                        <!-- class title name is temporary  -->
                        <!-- i stands for input -->
                        <asp:Label ID="lastname" class="title" runat="server" Text="Last Name:"></asp:Label>
                        <asp:TextBox ID="ilname" class="title inputbox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="lastNameRequireddValidator" class="d-block" runat="server" ControlToValidate="ilname" ErrorMessage="Last Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="flexsection">
                    <div class="gender">
                        <asp:Label ID="gender" class="title mb-3" runat="server" Text="Gender:"></asp:Label>

                        <div class="inputdetails gender-input">
                            <asp:RadioButton ID="male" runat="server" class="me-2" GroupName="Gender" Text="Male" />
                            <asp:RadioButton ID="female" runat="server" class="me-2" GroupName="Gender" Text="Female" />
                            <asp:RadioButton ID="other" runat="server" class="me-2" GroupName="Gender" Text="Others" />
                        </div>
                        <asp:RequiredFieldValidator ID="genderRequiredFieldValidator" class="d-block" runat="server" ControlToValidate="ifname" ErrorMessage="Gender is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="inputdetails">
                        <asp:Label ID="age" class="title" runat="server" Text="Age:"></asp:Label>
                        <asp:TextBox ID="userage" class="title agebox" type="number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="userage" runat="server" ErrorMessage="Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="flexsection">
                    <div class="email-inputdetails">
                        <asp:Label ID="email" class="title" runat="server" Text="Email:"></asp:Label>
                        <!-- i stands for input -->
                        <asp:TextBox ID="iemail" class="email_inputbox " runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" class="d-block" runat="server" ControlToValidate="iemail" ErrorMessage="Email is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" ControlToValidate="iemail" runat="server" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="flexsection">
                    <div class="inputdetails">
                        <asp:Label ID="password" CssClass="title" runat="server" Text="Create Password:"></asp:Label>
                        <asp:TextBox ID="ipassword" class="d-block inputbox" runat="server"></asp:TextBox>
                        <!-- c stands for create -->
                        <asp:RequiredFieldValidator ID="ipasswordRegularExpressionValidator" ControlToValidate="ipassword" class="d-block" runat="server" ErrorMessage="Password Requried" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputdetails">
                        <asp:Label ID="confirmPassword" CssClass="title" runat="server" Text="Confirm Password:"></asp:Label>
                        <asp:TextBox ID="iconfirmPassword" class="d-block inputbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="cpasswordRegularExpressionValidator" class="d-block" runat="server" ControlToValidate="iconfirmpassword" ErrorMessage="Confirm Password Requried" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="iconfirmPasswordCompareValidator" runat="server" ControlToCompare="ipassword" ControlToValidate="iconfirmpassword" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <asp:Button ID="submit" class="submitButton" type="submit" runat="server" Text="Submit" />
            </section>
        </form>
    </section>
</body>

<script src="Bootstrap/Scripts/jquery-3.0.0.min.js"></script>
<script src="Bootstrap/Scripts/bootstrap.min.js"></script>
</html>

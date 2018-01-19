<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_admin.aspx.cs" Inherits="test_Expression_web.Hospital_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 448px;
            width:1485px;
        }
        #GridView1{

            width:100%;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >

            <div style="font-family: 'Adobe Arabic'" >


                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" BackColor="White" Font-Bold="True" Font-Names="Adobe Arabic" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="Red" Height="88px" style="margin-left: 38px" Text="MEDICAL CENTER ADMIN" Width="408px"></asp:Label>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" DataKeyNames="DoctorCount" DataSourceID="SqlDataSource1" Height="301px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100px" ForeColor="#333333" GridLines="None" BorderStyle="None" BorderWidth="0px" CaptionAlign="Top" Font-Size="Smaller" Font-Strikeout="False" RowHeaderColumn="10px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="DoctorID" SortExpression="DoctorID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DoctorID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DoctorID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Specification" SortExpression="Specification">
                        <EditItemTemplate   >
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Specification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Specification") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T2" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DoctorName" SortExpression="DoctorName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T3" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date" SortExpression="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T4" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time" SortExpression="Time">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Time") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Time") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T5" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hospital" SortExpression="Hospital">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Hospital") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Hospital") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MaxPacients" SortExpression="MaxPacients">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MaxPacients") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("MaxPacients") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T7" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PacientNumber" SortExpression="PacientNumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("PacientNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("PacientNumber") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T8" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RoomNumber" SortExpression="RoomNumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("RoomNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("RoomNumber") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T9" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TP" SortExpression="TP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("TP") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("TP") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="T10" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DoctorCount" InsertVisible="False" SortExpression="DoctorCount">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DoctorCount") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("DoctorCount") %>'></asp:Label>
                        </ItemTemplate>
                       
                         <FooterTemplate>
                            <asp:LinkButton ID="LinkInsert" OnClick="insert_click"  runat ="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="4px" Wrap="False" />
                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Wrap="False" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" VerticalAlign="Middle" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPackConnectionString %>" DeleteCommand="DELETE FROM [DocSedule] WHERE [DoctorCount] = @DoctorCount" InsertCommand="INSERT INTO [DocSedule] ([DoctorID], [Specification], [DoctorName], [Date], [Time], [Hospital], [MaxPacients], [PacientNumber], [RoomNumber], [TP]) VALUES (@DoctorID, @Specification, @DoctorName, @Date, @Time, @Hospital, @MaxPacients, @PacientNumber, @RoomNumber, @TP)" SelectCommand="SELECT * FROM [DocSedule]" UpdateCommand="UPDATE [DocSedule] SET [DoctorID] = @DoctorID, [Specification] = @Specification, [DoctorName] = @DoctorName, [Date] = @Date, [Time] = @Time, [Hospital] = @Hospital, [MaxPacients] = @MaxPacients, [PacientNumber] = @PacientNumber, [RoomNumber] = @RoomNumber, [TP] = @TP WHERE [DoctorCount] = @DoctorCount">
            <DeleteParameters>
                <asp:Parameter Name="DoctorCount" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DoctorID" Type="String" />
                <asp:Parameter Name="Specification" Type="String" />
                <asp:Parameter Name="DoctorName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Hospital" Type="String" />
                <asp:Parameter Name="MaxPacients" Type="String" />
                <asp:Parameter Name="PacientNumber" Type="Int32" />
                <asp:Parameter Name="RoomNumber" Type="String" />
                <asp:Parameter Name="TP" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DoctorID" Type="String" />
                <asp:Parameter Name="Specification" Type="String" />
                <asp:Parameter Name="DoctorName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Hospital" Type="String" />
                <asp:Parameter Name="MaxPacients" Type="String" />
                <asp:Parameter Name="PacientNumber" Type="Int32" />
                <asp:Parameter Name="RoomNumber" Type="String" />
                <asp:Parameter Name="TP" Type="String" />
                <asp:Parameter Name="DoctorCount" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

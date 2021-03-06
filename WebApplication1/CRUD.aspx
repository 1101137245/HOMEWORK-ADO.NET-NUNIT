﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="WebApplication1.CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Student_ID" HeaderText="學號" ReadOnly="True" SortExpression="Student_ID" />
                <asp:DynamicField DataField="Student_Name" HeaderText="姓名" />
                <asp:DynamicField DataField="Student_Gender" HeaderText="性別" />
                <asp:BoundField DataField="Student_Birth" HeaderText="生日" SortExpression="Student_Birth" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MISStudentConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Student_ID] = @original_Student_ID AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Student_Gender] = @original_Student_Gender) OR ([Student_Gender] IS NULL AND @original_Student_Gender IS NULL)) AND (([Student_Class] = @original_Student_Class) OR ([Student_Class] IS NULL AND @original_Student_Class IS NULL)) AND (([Student_Birth] = @original_Student_Birth) OR ([Student_Birth] IS NULL AND @original_Student_Birth IS NULL))" InsertCommand="INSERT INTO [Student] ([Student_ID], [Student_Name], [Student_Gender], [Student_Class], [Student_Birth]) VALUES (@Student_ID, @Student_Name, @Student_Gender, @Student_Class, @Student_Birth)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Student_Name] = @Student_Name, [Student_Gender] = @Student_Gender, [Student_Class] = @Student_Class, [Student_Birth] = @Student_Birth WHERE [Student_ID] = @original_Student_ID AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Student_Gender] = @original_Student_Gender) OR ([Student_Gender] IS NULL AND @original_Student_Gender IS NULL)) AND (([Student_Class] = @original_Student_Class) OR ([Student_Class] IS NULL AND @original_Student_Class IS NULL)) AND (([Student_Birth] = @original_Student_Birth) OR ([Student_Birth] IS NULL AND @original_Student_Birth IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Student_ID" Type="String" />
                <asp:Parameter Name="original_Student_Name" Type="String" />
                <asp:Parameter Name="original_Student_Gender" Type="String" />
                <asp:Parameter Name="original_Student_Class" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Student_Birth" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_ID" Type="String" />
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Student_Gender" Type="String" />
                <asp:Parameter Name="Student_Class" Type="String" />
                <asp:Parameter DbType="Date" Name="Student_Birth" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Student_Gender" Type="String" />
                <asp:Parameter Name="Student_Class" Type="String" />
                <asp:Parameter DbType="Date" Name="Student_Birth" />
                <asp:Parameter Name="original_Student_ID" Type="String" />
                <asp:Parameter Name="original_Student_Name" Type="String" />
                <asp:Parameter Name="original_Student_Gender" Type="String" />
                <asp:Parameter Name="original_Student_Class" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Student_Birth" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

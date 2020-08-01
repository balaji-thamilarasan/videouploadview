<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideosPage.aspx.cs" Inherits="VideoUploadRetrive.VideosPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Video</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />  
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>  
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>  
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
        
         <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="true" HeaderStyle-CssClass="bg-danger text-white" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">  
                <EmptyDataTemplate>  
                    <div class="text-center">No Data Found <strong>Upload New Video</strong></div>  
                </EmptyDataTemplate>  
                <Columns>  
                   <asp:BoundField HeaderText="Video Name"  DataField="Name" />  
                    <asp:TemplateField HeaderText="Videos">  
                        <ItemTemplate>  
                            <video src='<%# Eval("id", "Handler.ashx?id={0}") %>' type="video/Mp4" width="830" controls="" loop="" height="430" controls="">  
                            </video>
                        </ItemTemplate> 
                     </asp:TemplateField>  
                </Columns>  
            </asp:GridView>  
    </div>
    </form>

       <script type="text/javascript">
         $(document).ready(function () {
             $("#GridView1").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });  
</script>
</body>
</html>

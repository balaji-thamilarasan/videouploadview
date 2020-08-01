<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadPage.aspx.cs" Inherits="VideoUploadRetrive.UploadPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="style1.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


</head>
<body>
 <form id="form1" runat="server"> 
<div class="body">
        <div class="container header-text">
	<h2 class="text-center header-text">Upload Your Video Here!</h2>
	<div class="d-flex justify-content-center">

		<div class="frame">
			<div class="center">
			<div class="title">
				<p>Enter File Name</p>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
			</div>
			<div class="dropzone">
				<img src="http://100dayscss.com/codepen/upload.svg" class="upload-icon">
		        <asp:FileUpload type="file" ID="FileUpload1" runat="server" class ="upload-input"  />
			</div>
                <asp:Button ID="Button1" runat="server"  class="btn" name="uploadbutton" 
                    Text="Upload Video" onclick="Button1_Click1" />
		</div>
		</div>
	</div>

	<div class="d-flex justify-content-center button-section">
		<a href="VideosPage.aspx" class="btn">Uploaded Videos</a>
	</div>
</div>
 </div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</form>
</body>
</html>

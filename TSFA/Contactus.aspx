<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="TSFA.Contactus" Title="ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
<script>
function isCharacterKey(evt)
{
	var charCode = (evt.which) ? evt.which : event.keyCode
	if (charCode == 32 || charCode == 8 || charCode == 44 || charCode == 46 || charCode == 45 || (charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122))
	return true;
	return false;
}

function isNumberKey(evt)
{
	var charCode = (evt.which) ? evt.which : event.keyCode
	if (charCode > 31 && (charCode < 40 || charCode > 57))
	return false;
	return true;
}

var whitespace = " \t\n\r";

function isEmpty(s) {
	return ((s == null) || (s.length == 0));
}
          
function isWhitespace (s) {

		var i;

		// Is s empty?
		if (isEmpty(s)) return true;

		// Search through string's characters one by one
		// until we find a non-whitespace character.
		// When we do, return false; if we don't, return true.
		for (i = 0; i < s.length; i++)
		{
				// Check that current character isnt whitespace.
				var c = s.charAt(i);

				if (whitespace.indexOf(c) == -1) return false;
		}

		// All characters are whitespace.
		return true;
}

function isEmail (s) {

		// is s whitespace?
		if (isWhitespace(s)) return false;

		// there must be >= 1 character before @, so we
		// start looking at character position 1
		// (i.e. second character)
		var i = 1;
		var sLength = s.length;

		// look for @
		while ((i < sLength) && (s.charAt(i) != "@"))
		{ i++
		}

		if ((i >= sLength) || (s.charAt(i) != "@")) return false;
		else i += 2;

		// look for .
		while ((i < sLength) && (s.charAt(i) != "."))
		{ i++
		}

		// there must be at least one character after the .
		if ((i >= sLength - 1) || (s.charAt(i) != ".")) return false;
		else return true;
}

function getExtension(filename) {
    var parts = filename.split('.');
    return parts[parts.length - 1];
}

function isDoc(filename) {
    var ext = getExtension(filename);
    switch (ext.toLowerCase()) {
    case 'doc':
    case 'docx':
    case 'pdf':
	case 'txt':
        
        return true;
    }
}
</script>	
	
<script>
function ValidationQ(theform)
{
	re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	
	if(theform.txtname.value.replace(/^\s+|\s+$/g,"")=="")
	{
		 alert("Please enter name!");
		 theform.txtname.focus();
		 return(false);
	}
	
	if(theform.txtphone.value.replace(/^\s+|\s+$/g,"")=="")
	{
		 alert("Please enter your phone!");
		 theform.txtphone.focus();
		 return(false);
	}
	
	if(theform.txtemail.value.replace(/^\s+|\s+$/g,"")!="")
	{
		if(!isEmail(theform.txtemail.value)) 
        {
		alert("Please enter correct e-mail address. !");
		theform.txtemail.value="";
		theform.txtemail.focus();
		return (false);
	    }
	}
	
	if(theform.txtsubject.value.replace(/^\s+|\s+$/g,"")=="")
	{
		 alert("Please enter subject!");
		 theform.txtsubject.focus();
		 return(false);
	}
	
	if(theform.txtmessage.value.replace(/^\s+|\s+$/g,"")=="")
	{
		 alert("Please enter enquiry/feedback.!");
		 theform.txtmessage.focus();
		 return(false);
	}
	
	if(theform.security_code.value.replace(/^\s+|\s+$/g,"")=="")
	{
		alert('Please enter Security Code !');
		theform.security_code.focus();
		return(false);
	}
	
	if(theform.security_code.value!="1f6ca")
	{
		alert("Please Type Correct Security Code !");
		theform.security_code.value="";
	    theform.security_code.focus();
	    return(false);
	}	
	
}
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<a id="maincontent"></a>
<section class="blog-style1 text-justify">

<div class="container">
<div class="row">

<div class="col-lg-12 col-md-12 col-sm-12">
<div class="item item1 text-center">
<div class="content pd_0px">
<h5 class="margin-15px-bottom mn"><a>:.Contact Us.:</a></h5>
</div>
</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12">	
<div class="container">
<div class="row"><!-- start contact form -->
<div class="col-lg-6 sm-margin-30px-bottom xs-margin-20px-bottom">
<div class="section-heading left">
<h4>Any Enquiry</h4>
</div>

<div class="contact-form-box margin-30px-top">
<form id="contact-form" method="POST"  action="#" onSubmit="return ValidationQ(this);">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="single-input mt_10px">
<input name="txtname"  placeholder="Name"  type="text" onKeyPress="return isCharacterKey(event);">
</div>
</div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="single-input mt_10px">
<input name="txtphone"   placeholder="Phone No." type="text" onKeyPress="return isNumberKey(event);">
</div>
</div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="single-input mt_10px">
<input name="txtemail"  placeholder="Email" type="text">
</div>
</div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="single-input mt_10px">
<input name="txtsubject"  placeholder="Subject" type="text">
</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="single-input mt_10px">
<textarea  name="txtmessage" rows="5" placeholder="Enquiry..."></textarea>
</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
<div class="single-input mt_10px">
<button type="submit" name="contact-us" class="btn btn-maincolor">SUBMIT</button>
</div>
</div>


</div>
</form></div>
</div>
<!-- end contact form  --><!-- start contact detail -->

<div class="col-lg-6">
<div class="contact-info-box padding-30px-left sm-no-padding">
<div class="row">
<div class="col-12">
<div class="contact-info-section no-padding-top margin-10px-top">
<h4>Get in Touch</h4>
<p>You can get in touch with TSFA at the following address</p>
</div>
</div>

<div class="col-12">
<div class="contact-info-section">
<ul class="list-style-1 no-margin-bottom">
	<li>
	<p><i class="fa fa-user-circle" aria-hidden="true"></i><strong>CCF/Director</strong><br />
	TELANGANA STATE FOREST ACADEMY<br />
	Dulapally, Hyderabad – 500 100<br />
	Telangana</p>
	</li>
	<li><p><i class="fa fa-phone-square" aria-hidden="true"></i> <strong>Phone : </strong> 040-29704894</p>	</li>
	<li><p><i class="fa fa-fax" aria-hidden="true"></i><strong>Fax : </strong>040-29704894</p></li>
	<li><p><i class="fa fa-envelope-o" aria-hidden="true"></i> <strong>Email : </strong>tsfa.hyd@gmail.com</p></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<!-- end contact detail --></div>
</div>

<div class="col-12">
<%--<iframe height="350" src="https://www.google.com/maps/d/embed?mid=1AxBz4Wey88oUgKKWKNh_qREvAafgNvaH" width="100%"></iframe>--%>

<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="350" id="gmap_canvas" 
src="https://maps.google.com/maps?q=T.S.Forest%20Academy%2C%20Dulapally%2C%20Hyderabad%2C%20Telangana&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="1"
 scrolling="Yes" marginheight="1" marginwidth="1"></iframe><a href="#">TSFA</a></div>
 <style>.mapouter{position:relative;text-align:right;height:350px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:350px;width:100%;}</style></div>
</div>
    </div>
    </div>          
    </div>
	</div>
    </section>

</asp:Content>

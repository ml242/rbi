<?php

$EmailFrom = $_REQUEST['email']; 
$EmailTo = "contact@russianballetinternational.com, davisrobertson@gmail.com, dp1970us@yahoo.com, abourtsev@gmail.com,"; // Your email address here
$Subject = "Inquiry";
$Name = Trim(stripslashes($_POST['name'])); 
$Email = Trim(stripslashes($_POST['email'])); 
$Message = Trim(stripslashes($_POST['message'])); 

// validation
$validationOK=true;
if (!$validationOK) {
  echo "Error";
  exit;
}

// prepare email body text
$Body = "";
$Body .= "Name: ";
$Body .= $Name;
$Body .= "\n";
$Body .= "Email: ";
$Body .= $Email;
$Body .= "\n";
$Body .= "Message: ";
$Body .= "\n";
$Body .= "\n";
$Body .= $Message;
$Body .= "\n";

// send email 
$success = mail($EmailTo, $Subject, $Body, "From: <$EmailFrom>");

// redirect to success page 
if($success) {
    header('location:success.html');
}
else{
  echo "Error";
}
?>
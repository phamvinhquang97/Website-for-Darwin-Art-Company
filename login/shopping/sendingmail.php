
<?php
include 'validation.php';

$to_email = "basantasap@98gmail.com";
$subject = "Simple Email Test via PHP";
$body = "Hi, This is test email send by PHP Script";
$headers = "From: jackphambs@gmail.com";

if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
} else {
    echo "Email sending failed...";
}
?>



<!DOCTYPE html>
<html>
    <head><title>How to send attachment in an email on form submission using PHP</title></head>
    <body>
        
    
<!-- Display contact form -->
<form method="post" action="" enctype="multipart/form-data">
    <div class="form-group">
        <input type="text" name="name" class="form-control"  placeholder="Name" required="">
    </div>
    <div class="form-group">
        <input type="email" name="email" class="form-control"  placeholder="Email address" required="">
    </div>
    <div class="form-group">
        <input type="text" name="subject" class="form-control"  placeholder="Subject" required="">
    </div>
    <div class="form-group">
        <textarea name="message" class="form-control" placeholder="Write your message here" required=""></textarea>
    </div>
    <div class="form-group">
        <input type="file" name="file" class="form-control">
    </div>
    <div class="submit">
        <input type="submit" name="submit" class="btn" value="SEND MESSAGE">
    </div>
</form>
 
</body>
 
</html>


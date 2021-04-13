$EmailTo = "abedi@petsupermarket.com, mgrossman@petsupermarket.com,rmuvva@petretailbrands.com"
$EmailFrom = "bi-team@petsupermarket.com"
$Subject = "Successful SSIS ForecastAccuracy Package run" 
$Body = "Success" 
$SMTPServer = "smtp.office365.com"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25) 
$SMTPClient.EnableSsl = $true
$SMTPClient.UseDefaultCredentials = $false
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("bi-team@petsupermarket.com") , ("@cc%B2FBx5"); 
$SMTPClient.Send($SMTPMessage)
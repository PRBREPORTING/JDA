$EmailTo = "abedi@petsupermarket.com, mgrossman@petsupermarket.com,HDMonitoring@petretailbrands.com"
$EmailFrom = "bi-team@petsupermarket.com"
$Subject = "Test" 
$Body = "Test Body" 
$SMTPServer = "smtp.office365.com"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25) 
$SMTPClient.EnableSsl = $true
$SMTPClient.UseDefaultCredentials = $false
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("abedi@petsupermarket.com") , ("asd_jkl05"); 
$SMTPClient.Send($SMTPMessage)
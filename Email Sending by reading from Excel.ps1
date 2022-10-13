$objExcel = New-Object -ComObject Excel.Application  
$WorkBook = $objExcel.Workbooks.Open("D:\Scripting\Mail Scripting SpreadSheet.xlsx") 
$workSheet = $WorkBook.Sheets.Item(1)

$userName = "harshajsharsh@gmail.com"
$password = "16 digit password"

$from = "harshajsharsh@gmail.com"
$to = $workSheet.cells.Item(2,1).Text


$subject = $workSheet.cells.Item(2,2).Text
$body = $workSheet.cells.Item(2,3).Text

[SecureString]$securepassword = $password | ConvertTo-SecureString -AsPlainText -Force 
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList $userName, $securepassword
Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From $from -To $to -Subject $subject -Body $body -Credential $credential
write "Email sent successfully"

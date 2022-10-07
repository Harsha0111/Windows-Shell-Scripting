$objExcel = New-Object -ComObject Excel.Application  
$WorkBook = $objExcel.Workbooks.Open("D:\Scripting\Spreadsheet.xlsx") 
$workSheet = $WorkBook.Sheets.Item(1)
echo $workSheet.cells.Item(1,1).Text

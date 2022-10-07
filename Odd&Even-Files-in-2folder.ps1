New-Item "D:\Scripting\1" -itemType Directory
New-Item "D:\Scripting\2" -itemType Directory
for( $i = 1; $i -le 20; $i++){
 if($i % 2 -eq 0){
    New-Item "D:\Scripting\2\$i.txt" -itemType File
    Set-Content "D:\Scripting\2\$i.txt" 'Even Files'

} else {
    New-Item "D:\Scripting\1\$i.txt" -itemType File
    Set-Content "D:\Scripting\1\$i.txt" 'Odd Files'
    }  
}
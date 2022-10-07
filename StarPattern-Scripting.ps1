for( $i = 1; $i -le 4; $i++)
{
  for( $j = 1; $j -le $i; $j++)
  {
     write-host -NoNewline "* "
  }
  write-host 
}
$triangle = ""
for( $i = 1; $i -le 4; $i++)
{
  for( $j = 1; $j -le $i; $j++)
  {
     $triangle += "* "
  }
  write-output $triangle
  $triangle = ""  
}
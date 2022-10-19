param(
  [array]$array
)
$map = @{}
for ($i=0; $i -lt $array.length; $i++){ 
  $res = az keyvault secret show --name $array[$i] --vault-name "nabki-keyvault" --query value -o tsv 
  "$array[$i] = $res" >> $env:GITHUB_ENV
  Write-Host("::add::mask::$res")
}
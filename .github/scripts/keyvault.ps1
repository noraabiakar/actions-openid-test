param(
  [array]$array
)
for ($i=0; $i -lt $array.length; $i++){ 
  $key = $array[$i]
  $val = az keyvault secret show --name $key --vault-name "nabki-keyvault" --query value -o tsv 
  "$key = $val" >> $env:GITHUB_ENV
  Write-Host("::add-mask::$val")
}
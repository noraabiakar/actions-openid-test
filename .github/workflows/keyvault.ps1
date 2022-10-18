param(
  [array]$array
)
$map = @{}
for ($i=0; $i -lt $array.length; $i++){ 
  $res = az keyvault secret show --name "secret1" --vault-name "nabki-keyvault" --query value -o tsv 
  $map.Add($array[$i], $res)
}
return $map

#.\test1.ps1 @('secret1', 'secret2', 'secret3')

param(
  [array]$array
)
$map = @{}
for ($i=0; $i -lt $array.length; $i++){ 
  $res = az keyvault secret show --name $array[$i] --vault-name "nabki-keyvault" --query value -o tsv 
  $map.Add($array[$i], $res)
}
return $map

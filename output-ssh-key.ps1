$aws_keys = Get-Content -Raw -Path "C:\Users\tatroc\Documents\aws_keys\ctatro_aws_keypair.json" | ConvertFrom-Json


$keyMaterial = $aws_keys.KeyMaterial

$key = $keyMaterial.Replace("\n","")
Write-host $key

$key | Out-File "C:\Users\tatroc\Documents\aws_keys\ctatro.key"

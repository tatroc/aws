$PATH="C:\Users\ctatro\.aws-sshkeys"
#$PATH_IN="$PATH\ctatro-raw.pem"
$PATH_OUT="$PATH\ctatro.pem"
$PATH_OUTPUT_OF_AWS_CMD="ctatro-output.json"

$JSON = Get-Content -Raw -Path "$PATH\$PATH_OUTPUT_OF_AWS_CMD" | ConvertFrom-Json

$JSON.KeyMaterial.Replace('\\n',"`n") | Set-Content "$PATH_OUT" -Force

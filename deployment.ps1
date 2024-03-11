$ErrorActionPreference = 'stop' # To allow terminating error instead of non-terminating

$StackName = 'demo-stack'
$TemplateBody = Get-Content -Path "cloudformation-temp.yaml" -Raw

if (Get-CFNStack -StackName $StackName) {

   Update-CFNStack -StackName $StackName TemplateBody $TemplateBody
   
} else {

   New-CFNStack -StackName $StackName TemplateBody $TemplateBody

}
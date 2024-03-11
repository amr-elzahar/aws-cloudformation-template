$ErrorActionPreference = 'stop' # Set the error action preference to 'stop' to allow terminating errors instead of non-terminating ones


$StackName = 'demo-stack'
$TemplateBody = Get-Content -Path "cloudformation-temp.yaml" -Raw 

if (Get-CFNStack -StackName $StackName) { 

   Update-CFNStack -StackName $StackName -TemplateBody $TemplateBody

} else {

   New-CFNStack -StackName $StackName -TemplateBody $TemplateBody

}
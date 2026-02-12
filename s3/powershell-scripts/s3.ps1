Import-Module AWS.Tools.S3

$region = "us-east-1"
$bucketName = Read-Host Prompt "Enter the bucket name"

Write-Host "Creating bucket $bucketName in region $region"

function BucketExists {
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}

if(-not (BucketExists)) {
    Write-Host "Bucket does not exist, creating it"
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket already exists"
}

#Create a file in the bucket
$fileName = "myfile.txt"
$fileContent = "This is a test file"

Set-Content -Path $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName
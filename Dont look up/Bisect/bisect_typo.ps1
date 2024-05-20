$htmlFilePath = "..\..\GitBisect\Page.html"

$specificValue = "Secction"

$htmlContent = Get-Content -Path $htmlFilePath

if ($htmlContent -like "*$specificValue*") {
    exit 1
} else {
    exit 0
}

# dodać też js script
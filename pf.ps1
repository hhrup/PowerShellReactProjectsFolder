$projectsFolder = 'C:\example\example\...'

$npxCreate = 
    "npx create-react-app my-app --template redux-typescript",
    "npx create-react-app my-app --template redux",
    "npx create-react-app my-app --template typescript",
    "npx create-react-app my-app"

Set-Location -Path $projectsFolder
Get-ChildItem
"`n"
Write-Host -ForegroundColor 'Magenta' "Use the up arrow to access npx commands quickly"

foreach($item in $npxCreate) {
    Write-Host -ForegroundColor 'Green' $item
    Add-Content -path (Get-PSReadlineOption).HistorySavePath $item
}
"`n"

powershell.exe

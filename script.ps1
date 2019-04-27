##Remove All Packages
$appname = @(
    "*zune*"
    "*King*"
    "*solitairecollection*"
    "*netflix*"
    "*3d*"
    "*maps*"
    "*onenote*"
    "*bing*"
    "*getstarted*"
    "*wallet*"
    "*soundrecorder*"
    "*officehub*"
    "*feedback*"
)

ForEach($app in $appname){
    Write-Host $app
    Get-AppxPackage $app | Remove-AppxPackage -ErrorAction SilentlyContinue
}
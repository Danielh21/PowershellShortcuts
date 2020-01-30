function src ([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source";
    if ($Code)	{
        Invoke-Expression "code .";
    }
}

function sms ([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\ftg.sms.cronservice";
    if ($Code)	{
        Invoke-Expression "code .";
    }

}
function Open-VS([switch] $admin, [switch] $payment) {
    if ($admin) {
        Invoke-Item "C:\Users\Daniel Hollmann\Documents\Development\Source\admininistration-consolidated-agents-shop\FBS.sln"
    }
	
    if ($payment) {
        Invoke-Item "C:\Users\Daniel Hollmann\Documents\Development\Source\payment-freetrailer-ftg\FTBS.Payment.sln"
    }
}

function admin ([switch] $VisualStudio) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\admininistration-consolidated-agents-shop";
    if ($VisualStudio)	{
        Start-Process -Verb "RunAs" powershell -ArgumentList "Open-VS -admin"
    }
}

function book ([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\web-booking";
    if ($Code)	{
        Invoke-Expression "code ."
    }

}

function pay ([switch] $VisualStudio) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\payment-freetrailer-ftg"
    if ($VisualStudio)	{
        Start-Process -Verb "RunAs" powershell -ArgumentList "Open-VS -payment"
    }

}

function kiosk([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\ftg.kiosk"
    if ($Code)	{
        Invoke-Expression "code ."
    }
}

function wp ([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\wordpress-searchbar-code";
    if ($Code)	{
        Invoke-Expression "code ."
    }
}

function fish ([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\ftg-api"
    if ($Code)	{
        Invoke-Expression "code ."
    }
}

function GoMain([switch] $Code) {
    set-location "C:\Users\Daniel Hollmann\Documents\Development\Source\main-website"
    if ($Code)	{
        Invoke-Expression "code ."
    }
}

function ftapp ([switch] $Code) {
    Set-Location "C:\Freetrailer_app"
    if ($Code) {
        Invoke-Expression "code ."
    }
}

function Start-FTApp([switch] $Cache) {
    if ($cache)	{
        Start-Process powershell -ArgumentList "Launch-FTApp -Cache"
    }
    else {
        Start-Process powershell -ArgumentList "Launch-FTApp"
    }
}

function Launch-FTApp([switch] $Cache) {
    set-location "C:\Freetrailer_app";
    if ($cache)	{
        Write-Host "Cleaning Cache";
        npm start --reset-cache
    }
    else {
        Write-Host "Starting React Native Server";
        react-native start 
    }
}

function userapp ([switch] $Code) {
    set-location "C:\user-app"
    if ($Code)	{
        Invoke-Expression "code ."
    }
}

function ADB-Reverse {adb reverse tcp:8081 tcp:8081}

function Launch-UAApp([switch] $Cache) {
    set-location "C:\user-app\freetrailer";
    if ($cache)	{
        Write-Host "Cleaning Cache";
        npm start --reset-cache
    }
    else {
        Write-Host "Starting React Native Server";
        react-native start 
    }
}
function Start-UAApp([switch] $Cache) {
    if ($cache)	{
        Start-Process powershell -ArgumentList "Launch-UAApp -Cache"
    }
    else {
        Start-Process powershell -ArgumentList "Launch-UAApp"
    }
}

function Reinstall-NodeModules(){
Remove-Item -Recurse .\node_modules\;
npm install;
}

function RemoveApp-Build (){
	Remove-Item -Recurse "C:\user-app\freetrailer\android\app\build\";
}

function View-Profile {
	Get-Content "C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1"
}

function View-KioskGUID(){
code "C:\Users\Daniel Hollmann\Documents\Development\Source\ftg-api\ftg.api\modules\kioskGuids.js"
}

function Get-KioskGUI ($Location) {
    Select-String -Path  "C:\Users\Daniel Hollmann\Documents\Development\Source\ftg-api\ftg.api\modules\kioskGuids.js" -Pattern $location -SimpleMatch 
}

function Edit-Profile {
    Start-Process notepad++.exe  "C:\Users\dahol\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
}

function Edit-Hosts {
    Start-Process -Verb "runAs" notepad++.exe "C:\Windows\System32\drivers\etc\hosts"
}

function Copy-StoryJira {
	Get-Content "C:\Users\Daniel Hollmann\jiraStory.txt" | Set-Clipboard
}

function Copy-LogStatementDynamicWeb {
	"LogManager.System.GetLogger(LogCategory.Health, `"DXC_CreateUser_Json`").Info(String.Format(`"Group Count {0}`", groups.Count ));" | Set-Clipboard
}

function Copy-BugJira {
	Get-Content "C:\Users\Daniel Hollmann\jiraBug.txt" | Set-Clipboard
}

function Copy-GitBranch {
git rev-parse --abbrev-ref HEAD | Set-Clipboard
}

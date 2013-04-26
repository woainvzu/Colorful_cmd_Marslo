Set-Alias c Clear-Host
Set-Alias l Get-ChildItem
function la
{
    $currentpath = Get-Location
    Get-ChildItem $currentpath -force
}
function l.
{
    # Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" } | Select FullName
    Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" }
}
function t.
{
    Get-ChildItem . -Recurse -Force | Where { ($_.Attributes.ToString() -Split ", ") -Contains "Hidden" } | Select FullName
}
function tree
{
    $currentpath = Get-Location
    Get-ChildItem $currentpath -recurse
}
function al
{
    Set-Location "C:\Marslo\Job\Summa\FE Tools\LotusNotes\AutoLotusNotes"
}
function ats
{
    Set-Location "C:\Marslo\Job\Summa\FE Tools\AutoScritps"
}
function desk
{
    Set-Location "C:\Users\jiaoolii\Desktop"
}
function prog
{
    Set-Location "C:\Program Files"
}
function gr
{
    Set-Location c:\
}
function gh
{
    Set-Location "C:\Users\jiaoolii"
}
function ex
{
    explorer .
}
function openit
{
    param(
            $p
        )
    if(Test-Path $p){
        # Write-Output $p
        explorer.exe $p
    } else{
            "Could not find the $p"
    }
}
function alias
{
   Get-Content "C:\Users\jiaoolii\Documents\WindowsPowerShell\aliases_Marslo.txt"
}
function wp
{
    Set-Location "C:\Users\jiaoolii\Documents\WindowsPowerShell"
}

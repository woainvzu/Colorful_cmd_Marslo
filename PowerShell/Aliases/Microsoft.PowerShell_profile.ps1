[Console]::CursorSize = 10
$HOST.UI.RawUI.CursorSize = 6
Set-Alias c Clear-Host
Set-Alias l Get-ChildItem
Set-Alias l color-ls
Set-Alias subl "C:\Program Files\Sublime Text 3\sublime_text.exe"
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
function ..
{
    Set-Location ..
}
function ...
{
    Set-Location ..\..
}
function ats
{
    Set-Location "C:\Marslo\Job\Codes"
}
function lno
{
    Set-Location "C:\Marslo\Job\Codes\LotusNotesOpt"
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

function color-ls {
  $regex_opts = ([System.Text.RegularExpressions.RegexOptions]::IgnoreCase -bor [System.Text.RegularExpressions.RegexOptions]::Compiled)

  $fore = $Host.UI.RawUI.ForegroundColor
  $compressed = New-Object System.Text.RegularExpressions.Regex('\.(zip|tar|gz|rar)$', $regex_opts)
  $executable = New-Object System.Text.RegularExpressions.Regex('\.(exe|bat|cmd|ps1|psm1|vbs|rb|reg|dll|o|lib)$', $regex_opts)
  $executable = New-Object System.Text.RegularExpressions.Regex('\.(exe|bat|cmd|ps1|psm1|vbs|rb|reg|dll|o|lib)$', $regex_opts)
  $source = New-Object System.Text.RegularExpressions.Regex('\.(py|pl|cs|rb|h|cpp)$', $regex_opts)
  $text = New-Object System.Text.RegularExpressions.Regex('\.(txt|cfg|conf|ini|csv|log|xml)$', $regex_opts)

  Invoke-Expression ("Get-ChildItem $args") |
    %{
      if ($_.GetType().Name -eq 'DirectoryInfo') {
        $Host.UI.RawUI.ForegroundColor = 'Green'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($compressed.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Red'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($executable.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Yellow'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($text.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Cyan'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($source.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'DarkGreen'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } else {
        $_
      }
    }
}

function prompt
{
    # Set Window Title
    $host.UI.RawUI.WindowTitle = "$ENV:USERNAME@$ENV:COMPUTERNAME - $(Get-Location)"

    # Set Prompt
    # Write-Host (Get-Date -Format G) -NoNewline -ForegroundColor Red
    Write-Host (Get-Date -UFormat "%Y/%m/%d") -NoNewline -ForegroundColor Red
    Write-Host (Get-Date -UFormat " %r ") -NoNewline -ForegroundColor Green
    # Write-Host " [" -NoNewline -ForegroundColor DarkGray
    # Write-Host $(get-location) -ForegroundColor DarkGray -NoNewline
    # Write-Host "] " -NoNewline -ForegroundColor DarkGray

    # Check for Administrator elevation
    $wid=[System.Security.Principal.WindowsIdentity]::GetCurrent()
    $prp=new-object System.Security.Principal.WindowsPrincipal($wid)
    $adm=[System.Security.Principal.WindowsBuiltInRole]::Administrator
    $IsAdmin=$prp.IsInRole($adm)
    if ($IsAdmin) {
        Write-Host ">>" -NoNewline -ForegroundColor Red
        return " "
    }
    else {
        Write-Host ">" -NoNewline -ForegroundColor Gray
        return " "
    }
 }
# functio mgp
# {
    # param(
            # $strs
        # )
    # "C:/Marslo/Tools/Softwares/Programming/Ruby/Devkit/bin/grep.exe" $strs . | "C:/Marslo/Tools/Softwares/Programming/Ruby/Devkit/bin/grep.exe" -v '\.svn\|\.git\|tags'
# }

# --- Shortcuts ---
# begin
# {
  # $WshShell = New-Object -ComObject WScript.Shell;
# }
# process
# {
  # $WshShell.CreateShortcut($_)
# }


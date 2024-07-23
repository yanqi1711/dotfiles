oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/di4am0nd.omp.json" | Invoke-Expression

Remove-Alias -Name ni -Force
Remove-Alias -Name r -Force

$env:POWERSHELL_UPDATECHECK = 'Off'

function p($param) {ping $param -t}
function nio {ni --prefer-offline}
function s {nr start}
function d {nr dev}
function b {nr build}
function t {nr test}

function w1 {ssh root@192.168.1.101}
function a1 {ssh root@120.76.43.169}
function t1 {ssh ubuntu@43.163.240.55 -p 23333}
function y1 {ssh yanqi@154.12.37.219 -p 23333}
function u1 {ssh sonna@192.168.40.233}
function o1 {ssh orangepi@192.168.6.101}

function c {cat $env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1}
function r {notepad $env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1}
function x {rm ‪$env:USERPROFILE\.ssh\known_hosts}

function .ssh {cat $env:USERPROFILE\.ssh\id_rsa.pub}
function ssh-copy-id([string]$userAtMachine, $args){   
    $publicKey = "$ENV:USERPROFILE" + "/.ssh/id_rsa.pub"
    if (!(Test-Path "$publicKey")){
        Write-Error "ERROR: failed to open ID file '$publicKey': No such file"            
    }
    else {
        & cat "$publicKey" | ssh $args $userAtMachine "umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys || exit 1"      
    }
}
function i($1) {
  cd D:\i\$1
}
function serve($1) {
  if (!($1)){
    live-server dist --port=80
  }  
  else{
    live-server $1 --port=80
  }
}
function update {
    winget upgrade -q Powershell
}
function touch($filename) {
    New-Item -ItemType File -Name "$filename"
}
function vi($filename) {
    notepad $filename
}
function com {
    wmic path Win32_PnPEntity where "PNPClass = 'Ports'" get Caption
}

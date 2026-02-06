Remove-Item -Path Alias:ni -Force
Remove-Item -Path Alias:r -Force

$envPOWERSHELL_UPDATECHECK = 'Off'

function r {notepad $PROFILE}

function t {ssh ubuntu@43.160.207.44 -p 23333}
function o {ssh orangepi@192.168.6.101}

function .. {cd ..}
function d {nr dev}

function a($1) {
  cd D:\a\$1
}
function i($1) {
  cd D:\i\$1
}
function p($1) {
  cd D:\p\$1
}
function v($1) {
  cd D:\v\$1
}
function z($1) {
  cd D:\z\$1
}

function vi($path) {
  if (-not (Test-Path $path)) {
    New-Item -ItemType File -Path $path | Out-Null
  }
  notepad $path
}

function com {
    wmic path Win32_PnPEntity where PNPClass = 'Ports' get Caption
}

function grt {cd $(git rev-parse --show-toplevel)}
function gs {git status}
function gp {git push}
function gpf {git push --force}
function gpft {git push --follow-tags}
function gpl {git pull --rebase}
function gcl {git clone}
function gst {git stash}
function grm {git rm}
function gmv {git mv}
function main {git checkout main}
function gco {git checkout}
function gcob {git checkout -b}
function gb {git branch}
function gbd {git branch -d}
function grb {git rebase}
function grbom {git rebase originmaster}
function grbc {git rebase --continue}
function gl {git log}
function glo {git log --oneline --graph}
function grh {git reset HEAD}
function grh1 {git reset HEAD~1}
function ga {git add}
function gA {git add -A}
function gc {git commit}
function gcm {git commit -m}
function gca {git commit -a}
function gxn {git clean -dn}
function gx {git clean -df}
function gsha {git rev-parse HEAD  pbcopy}
function ghci {gh run list -L 1}

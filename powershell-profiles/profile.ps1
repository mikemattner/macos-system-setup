# This get item property alias gets in the way of my git function
Remove-Item Alias:gp -Force

# Directory Navigation Shortcuts
function docroot     { Set-Location "c:/projects" }

# Easier navigation: .., ..., ...., .....
function ..          { Set-Location .. }
function ...         { Set-Location ../.. }
function ....        { Set-Location ../../.. }
function .....       { Set-Location ../../../.. }

# Git commands
function gp          { git push $args }
function gst         { git status $args }
function gnb         { git checkout -b $args }
function gmsg        { git commit -m $args }
function glog        { git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all }

oh-my-posh init pwsh --config 'C:\Users\mikemattner\mikemattner-v2.omp.json' | Invoke-Expression
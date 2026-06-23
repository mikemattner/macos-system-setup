# Directory Navigation Shortcuts
function docroot     { Set-Location "c:/acculynx" }
function accuroot    { Set-Location "c:/acculynx/web-dev" }
function accufront   { Set-Location "c:/acculynx/web-dev/web" }
function accuadmin   { Set-Location "c:/acculynx/web-dev/adminweb" }
function portalroot  { Set-Location "c:/acculynx/customerportal" }
function portalfront { Set-Location "c:/acculynx/customerportal/customer-portal" }

# Easier navigation: .., ..., ...., .....
function ..          { Set-Location .. }
function ...         { Set-Location ../.. }
function ....        { Set-Location ../../.. }
function .....       { Set-Location ../../../.. }

# Git commands
function gst         { git status $args }
function gnb         { git checkout -b $args }
function gmsg        { git commit -m $args }
function glog        { git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all }

oh-my-posh init pwsh --config 'C:\Users\mikemattner\mikemattner-v2.omp.json' | Invoke-Expression
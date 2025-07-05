oh-my-posh init pwsh --config "$env:USERPROFILE\Desktop\Applications\PS\my_theme.json" | Invoke-Expression
function ..   { cd ..; ls }
function ...  { cd ../..; ls }
function .... { cd ../../..; ls }
function vpr { vim $PROFILE }
function home { cd ~; ls }
function pingg { ping google.com -n 5 }
function ports { netstat -ano }
function ipc { ipconfig }
function ipd { route print | Select-String "0.0.0.0" }
function ipn { Get-Content "$env:SystemRoot\System32\drivers\etc\resolv.conf" | Select-String "nameserver" }
function gl { git log --oneline --graph --decorate --all }
function gr { git remote -v }
function gpf { git fetch origin; git pull --rebase }
function gp { git push -u }
function gitcon { ssh -T git@github.com }
function gc { git commit $args }
function ga { git add -m $args }
function gb { git branch }
function gs { git status }
function cl { Set-Location $args[0]; Get-ChildItem }

function rmrf {
        param([string]$path)
            if ($PWD.Path -like "$($path)*") { Set-Location .. }
                Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue
}


function Change-Repo {
        param(
                [string]$User,
                        [string]$Repo
                            )

            git remote remove origin 2>$null
                git remote add origin "git@github.com:$User/$Repo.git"
}

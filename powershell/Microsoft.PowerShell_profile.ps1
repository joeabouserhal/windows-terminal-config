$mojada = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\mojada.omp.json"
$1_shell = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\1_shell.omp.json"
$dracula = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\dracula.omp.json"
$dracula_custom = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\dracula_custom.omp.json"
$default = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\default.omp.json"
$tiwahu = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\tiwahu.omp.json"
$tiwahu_custom = "C:\Users\Joe\AppData\Local\Programs\oh-my-posh\themes\tiwahu_custom.omp.json"
$desktop = "C:\Users\Joe\Desktop"

oh-my-posh init pwsh --config $tiwahu_custom| Invoke-Expression

function Invoke-Tere() {
    $result = . (Get-Command -CommandType Application tere) $args
    if ($result) {
        Set-Location $result
    }
}
Set-Alias tere Invoke-Tere

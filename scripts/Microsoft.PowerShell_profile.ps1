# ---------------------------> Define the style of the OhMyPosh terminal <---------------------------------------------

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/clean-detailed.omp.json" | Invoke-Expression

# ---------------------------> Import the modules you need <---------------------------------------------

Import-Module -Name Terminal-Icons

# ---------------------------> Custom commands or aliases <---------------------------------------------

Remove-Alias cat -Force
New-Alias -Name catl -Value bat
New-Alias -Name catn -Value Get-Content
function cat ($file) { bat --paging=“never” $file }

# Esse procedimento deve ser executado para configurar o prompt do cmder.exe com informa;Ã³es do git
# 1 - Instale o git na maquina
# 2 - Inclua o git no path
# 3 - Instale o PowerShell 5 ou superior, baixe aqui: https://www.microsoft.com/en-us/download/confirmation.aspx?id=54616 
# 4 - Instale o posh-git: https://github.com/dahlbyk/posh-git#installation

Write-Host "Versão do PowerShell atual, se for inferior a 5, baixe aqui: https://www.microsoft.com/en-us/download/confirmation.aspx?id=54616 e atualize"
$PSVersionTable.PSVersion

pause

Write-Host "Configurando policy:"
Set-ExecutionPolicy Unrestricted -Scope LocalMachine -Confirm

pause 

Write-Host "Instalando o posh-git:"
Install-Module posh-git -Scope AllUsers -Force

Write-Host "Copiando profile..."
Copy-Item ./profile.ps1 $HOME\Documents\WindowsPowerShell\.

Write-Host "Concluido. Execute o cmder e seja feliz"


#Install Chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



#Assign Packages to Install

$Packages = 'googlechrome',`

            'vscode',`

            'git',`

            'visualstudio2017-workload-azure',`

            'visualstudio2017-workload-netweb'

            'Microsoft-Hyper-V-All -s windowsfeature'
            
            'containers'  
            
            'docker-for-windows'





#Install Packages

ForEach ($PackageName in $Packages)

{choco install $PackageName -y}



#Reboot

Restart-Computer -Force

#Install Chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



#Assign Packages to Install

$Packages = 'nodejs.install --version 6.12.3',`

#            'bower --version 1.8.4',`

#            'googlechrome',`

#            'vscode',`

            'git',`

            'visualstudio2017-workload-azure',`

            'visualstudio2017-workload-netweb',`
#
#           'Microsoft-Hyper-V-All -s windowsfeature',`
            
 #           'containers',`
            
 #           'docker-for-windows'





#Install Packages

ForEach ($PackageName in $Packages)

{choco install $PackageName -y}





#Reboot

Restart-Computer -Force
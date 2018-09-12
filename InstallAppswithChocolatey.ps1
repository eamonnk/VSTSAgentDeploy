
#Install Chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



#Assign Packages to Install

$Packages = 'googlechrome',`

            'visualstudiocode',`

            'git',`

            'visualstudio2017community',`

            'visualstudio2017-workload-azure',`

            'visualstudio2017-workload-netweb'

            'visualstudio2017-workload-netweb'

            'Docker'

            'Microsoft-Hyper-V -s windowsfeatures'  





#Install Packages

ForEach ($PackageName in $Packages)

{choco install $PackageName -y}



#Reboot

Restart-Computer
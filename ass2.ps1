Get-Process | where-object {$_.CPU -gt 7000}   #Program set to report any program reaching over 70% of CPU usage. 

if (((Get-MpComputerStatus).AMServiceEnabled)) { echo "Antimalware enabled"}   #Checking the antimalware is enabled under AMServices.


Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName > C:\Users\Kramertech\Desktop\InstalledProgramsRef-PS.txt
Compare-Object -ReferenceObject (Get-Content C:\Users\Kramertech\Desktop\InstalledPrograms-PS.txt) -DifferenceObject (Get-Content C:\Users\Kramertech\Desktop\InstalledProgramsRef-PS.txt)
#Compared to a list on my desktop
 
Get-Service | Select-Object DisplayName >C:\Users\Kramertech\Desktop\ServicesRef-PS.txt
Compare-Object -ReferenceObject (Get-Content C:\Users\Kramertech\Desktop\Services-PS.txt) -DifferenceObject (Get-Content C:\Users\Kramertech\Desktop\ServicesRef-PS.txt)
#Compared to a list on my desktop
 
(Get-Itemproperty -Path Registry::HKEY_LOCAL_MACHINE\SYSTEM\State\DateTime)."NTP Enabled"

Echo $env:Username
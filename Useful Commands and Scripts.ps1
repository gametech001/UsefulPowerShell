#Selection of useful commands and scripts for various processes/tools

#############################################################################################################################################

#Run this to force an AD Sync between on prem and O365. Only works on the server where AzureAD/Entra ID connect is installed (or whatever Microsoft call it this week).

Start-AdSyncSyncCycle –PolicyType Delta

#Run this to force AzureAD sync on a different server:

Invoke-Command -ComputerName <SERVER> -ScriptBlock { Start-ADSyncSyncCycle -PolicyType Delta }

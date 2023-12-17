#Run this to force an AD Sync between on prem and O365. Only works on the server where AzureAD connect is installed.

Start-AdSyncSyncCycle –PolicyType Delta


#Run this to force AzureAD sync on a different server:

Invoke-Command -ComputerName <SERVER> -ScriptBlock { Start-ADSyncSyncCycle -PolicyType Delta }



#Want to find out the full UPN of a user:

Whoami /upn

#PowerShell uses modules for all matter of scripting/commands (e.g. Exchange Online Management, Entra ID Management, Windows Update, third party modules like connecting to APIs). 
#You can even create your own modules if you want but that is not covered here.
#Modules can be installed from the PowerShell gallery: https://www.powershellgallery.com/packages?q=sentinel.

#Use Install-Module -Name to install a module.

Install-Module -Name PackageManagement

#Some modules need to be imported. Use Import-Module to import these into the session.

Import-Module PackageManagement

#Find imported modules with Get-Module.

Get-Module

#You can update modules with Update-Module.

Update-Module -Name PackageManagement

#More info here: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_modules?view=powershell-7.4

#############################################################################################################################################

#To do:

#Profiles
#Pipeline
#Where-Obeject
#Select-Object
#IfElse
#Switch
#Chaining
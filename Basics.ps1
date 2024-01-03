#This is a comment. All comments have # at the start of the line. 

This is not a comment. You try and run this and it will error out. 

#I’ll be doing this to explain commands/scripts and then the command/script on the next lines. 

#Not all commands need to be capitalised but I’m doing this as this is what PowerShell shows when you press tab to complete the command. 

#############################################################################################################################################

#Need to quit a command or script whilst it is running? No problem, simply use Ctrl+C.

#This a simple command to output to the console. You put what ever text you want in the quotes:
#More info here: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-7.4

Write-Host “Insert what you want here. Can be a whole block if you want.”
write-host “Hello”

#It is also possible to format Write-Host with colours and other formatting. Useful ones are backgound colour and forground colour. 
#Though because of American language in scripting, you need to use the incorrect format of colour, which is color.

Write-Host -ForegroundColor Red "This text is in red"
Write-Host -BackgroundColor Green "This text has a green background"
Write-Host -ForegroundColor Black -BackgroundColor Yellow "This text is black on a yellow background"

#You can also use this command to output to the console. Same format as write-host;
#More info here: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-output?view=powershell-7.4

Write-Output “Insert text here”
write-output “How are you doing today?”

#Want to get something from the user? Well you can do with the Read-Host command:
#More info here: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/read-host?view=powershell-7.4

Read-Host

#You can also add text to display on the read-host command so people know what is for. Note that it automatically appends : to the end.

Read-Host "Please enter your name"

#############################################################################################################################################

#All the above is good. But isn't actually usable in more advanced scripting and commands. For that, we need to use variables.
#More info here: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.4

#Variables use $ at the start and are followed by an = sign. Anything after the = sign is then used in the variable, whether that be text strings (needs to be in "") or another command/script.
#Variables can be incorperated into all aspects of scripting for use later on in scripts or to output from the pipeline. For example:

$Name = Read-Host "Please enter your name"
Write-Host "Hello" $Name

#Maybe you want to use vairables in commands or text without breaking out of it. You can do so by using $($<VARIABLE_NAME>). E.g

$Name = Read-Host "Please enter your name"
Write-Host "Hello $($Name)"

#Ideally, you should use unique variable names to know what the variables do/are for and to prevent any issues down the line.
#############################################################################################################################################
# Script to Repair Trust Relationship Issues between Workstation and Domain. This script resets the computer account password. If this script does not resolve the issue, try resetting
# the account on a Domain Controller

#Prompts user for Active Directory Domain Credentials.
$Credential = Get-Credential

#Prompts the user to specify the Domain Controller to target the operation on.
$DomainController = Read-Host `
-Prompt "Please specify Domain Controller hostname to run operation against"

#Below command resets the secure channel password using the provided credentials against the server that last authenticated the machine.
Reset-ComputerMachinePassword `
-Credential $Credential `
-Server $DomainController

#Advises the user that the Secure Channel is now being tested. If result is 'True' the Secure Channel has been repaired and the computer can now authenticate against AD. 
Write-Host `
-Debug "Now Verifying Computer Secure Channel to Active Directory. True = Success, False = Failure" 

Test-ComputerSecureChannel
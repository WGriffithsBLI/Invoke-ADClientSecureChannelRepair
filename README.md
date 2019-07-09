# Invoke-ADClientSecureChannelRepair
A script to repair the trust relationship between an AD Client and a Domain Controller.

This script is tested working on Windows 10 Enterprise. Functionality with older versions of Windows and PowerShell may be limited. 
Please ensure you are running the latest version of PowerShell.

This script will output either "True" or "False" at the end of the script to confirm status of the Secure Channel. 
"True" confirms the Secure Channel is now working and the computer may authenticate against AD.
"False" confirms that the Secure Channel is still not working. You may need to do a full disjoin/re-join of the client to AD or confirm
that AD replication and your Domain Controllers is healthy. 

<# DSC
    - Desired State Configuration

- firewall -> On
- WinRM service -> On
- BITS Service -> off
- file: c:\file.txt --> present
- IIS Web server --> On

Mode of DSC:
    1. Push Mode
        - server will push updates to client
        - Advantage: easy to deploy
        - Disadvantage: if client is off/unreachable, updates will be missed.

    2. Pull Mode
        - client will PULL updates from server
        - Advantage: client will never miss any update 
        - Disadvantage: very complicated
#>

# DSC Push Mode Config
######################

Import-Module -Name PSDesiredStateConfiguration

configuration my-services{
    Node comp1 {
        service bits{
            Name = "BITS"
            State = "Running"
        }
    }
}

# generate the MOF File
my-services

# apply config
Start-DscConfiguration -Path .\my-services -Wait -Verbose

# testing the config
Test-DscConfiguration -CimSession comp1
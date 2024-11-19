Workflow Test-Workflow{
    "This Will Run First"
    parallel {
        "Command 1"
        "Command 2"
    sequence {
         "Command A"
         "Command B"
         "Command C"
    }
    "Command 3"
    "Command 4"
    "Command 5"
    "Command 6"
    Get-Service | measure
    "Command 7"
    }
}
cls
Test-Workflow
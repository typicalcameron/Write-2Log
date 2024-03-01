# Write-2Log
 Description:
    - Write-2Log is a simple function designed to log messages to files.

Parameters:
    - $SeverityLevel
        Description: Indicated the severity level of the log message.
        Mandatory Paramater: $true
        ValidateSet: DEBUG, INFO, WARNING, ERROR
    - $Message
        Description: The message to be logged.


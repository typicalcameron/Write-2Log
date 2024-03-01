# Write-2Log
 #### Description:
---------------------
 * Write-2Log is a simple function designed to log messages to files.

#### Parameters:
---------------------
* `$SeverityLevel`:
    * Description: Indicated the severity level of the log message.
    * Mandatory Paramater: `$true`
    * ValidateSet: `DEBUG`, `INFO`, `WARNING`, `ERROR`
* `$Message`:
    * Description: The message to be logged.

#### Switch Statement:
---------------------
* It selects the appropraite action based on the severity level passed. From there, it appends the $message to the log file along with a timestamp `$GetDate` and severity level.

#### Output File:
---------------------

#### Examples:
---------------------
* ##### Example 1:
```
    Write-2Log -SeverityLevel DEBUG -Message "Message here"
```
* ##### Example 2:
```
    Write-2Log -SeverityLevel INFO -Message "Message here"
```


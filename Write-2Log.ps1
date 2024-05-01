function Write-2Log 
{
    param(
        [Parameter(Mandatory=$true)]
        [ValidateSet("DEBUG","INFO","WARNING","ERROR")]
        [string]$SeverityLevel,
        [Parameter(Mandatory=$true)]
        [string]$Message
    )

    $GetDate = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $Path = $env:TEMP
    $FileName = "$(($MyInvocation.MyCommand.Name).Split(".ps1")[0]).log"
    $ErrorActionPreference = "SilentlyContinue"

    $PathFile = "$($Path)\$($FileName)"
    $GetFilePath = Get-Item -Path $PathFile -ErrorAction $ErrorActionPreference

    if ($GetFilePath -eq $null)
    {
        try 
        {
            New-Item -Path $Path -Name $FileName | Out-Null
        }
        catch
        {
            $_.Exception.Message
        }
    }

    switch ($SeverityLevel)
    {
        "DEBUG" 
        {
             $Value = "$GetDate - $SeverityLevel - $Message"
             Write-Output $Value
             Add-Content -Path $PathFile -Value $Value
             Start-Sleep -Seconds 1
        }
        "INFO" 
        {
             $Value = "$GetDate - $SeverityLevel - $Message"
             Write-Output $Value
             Add-Content -Path $PathFile -Value $Value
             Start-Sleep -Seconds 1
        }
        "WARNING" 
        {
             $Value = "$GetDate - $SeverityLevel - $Message"
             Write-Output $Value
             Add-Content -Path $PathFile -Value $Value
             Start-Sleep -Seconds 1        
        }
        "ERROR"
        {
             $Value = "$GetDate - $SeverityLevel - $Message"
             Write-Output $Value
             Add-Content -Path $PathFile -Value $Value
             Start-Sleep -Seconds 1            
        }
    }
}

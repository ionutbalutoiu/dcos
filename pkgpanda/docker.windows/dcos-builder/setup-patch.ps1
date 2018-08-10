$ErrorActionPreference = "Stop"

$FILENAME_PATH = "c:\temp\patch-2.5.9-7-setup.exe"

$parameters = @{
    'FilePath' = $FILENAME_PATH
    'ArgumentList' = @("/VERYSILENT", "/SUPPRESSMSGBOXES", "/SP-")
    'Wait' = $true
    'PassThru' = $true
}
Write-Output "Installing $FILENAME_PATH"
$p = Start-Process @parameters
if($p.ExitCode -ne 0) {
    Throw "Failed to install $FILENAME_PATH"
}

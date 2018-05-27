$ErrorActionPreference = 'Stop';

$packageName = 'microsoft-ropen'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://mran.blob.core.windows.net/install/mro/3.4.4/microsoft-r-open-3.4.4.exe"
$checkSum = "1E4C676D840EE847CB1A28709573D9A520EEF244746A3B0B97017CE9AACDB58F"

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'EXE'
    checksum       = $checkSum
    checksumType   = 'sha256'
    url            = $url
    silentArgs     = '/quiet'
    validExitCodes = @(0)
}


Install-ChocolateyPackage @packageArgs
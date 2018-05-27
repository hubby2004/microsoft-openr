$ErrorActionPreference = 'Stop';

$packageName = 'microsoft-ropen'
$installerType = 'EXE'
$file = "msiexec.exe"
$silentArgs = '/X{E07BD6D0-DF04-43FA-BF11-8EDFBC5E7701} /qn'
$validExitCodes = @(0)

Uninstall-ChocolateyPackage -PackageName $packageName `
            -FileType $installerType `
            -SilentArgs "$silentArgs" `
            -ValidExitCodes $validExitCodes `
            -File "$file"

Write-Warning "Depending on how R packages were installed, you may need to manually remove any R packages that remain in your personal R library and/or the global R library after uninstalling Microsoft R Open."
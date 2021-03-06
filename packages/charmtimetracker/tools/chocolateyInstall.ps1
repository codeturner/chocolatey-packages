﻿$ErrorActionPreference = 'Stop';

$packageName= 'charmtimetracker'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/KDAB/Charm/releases/download/1.11.1/Charm.1.11.1.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    ='/S'
  validExitCodes= @(0)

  softwareName  = 'Charm'
}

Install-ChocolateyPackage @packageArgs

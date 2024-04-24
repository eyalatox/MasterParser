Write-Verbose -Message "Restoring tools from NuGet..."
$NuGetOutput = Invoke-Expression "& $env:NUGET_EXE_INVOCATION install -ExcludeVersion -OutputDirectory `"$TOOLS_DIR`""

if(-Not $SkipToolPackageRestore.IsPresent) {
    Push-Location
    Set-Location $TOOLS_DIR

    # Check for changes in packages.config and remove installed tools if true.
    [string] $md5Hash = MD5HashFile($PACKAGES_CONFIG)
    if((!(Test-Path $PACKAGES_CONFIG_MD5)) -Or
      ($md5Hash -ne (Get-Content $PACKAGES_CONFIG_MD5 ))) {
        Write-Verbose -Message "Missing or changed package.config hash..."
        Remove-Item * -Recurse -Exclude packages.config,nuget.exe
    }

    Write-Verbose -Message "Restoring tools from NuGet..."
    $NuGetOutput = Invoke-Expression "&`"$NUGET_EXE`" install -ExcludeVersion -OutputDirectory `"$TOOLS_DIR`""

    if ($LASTEXITCODE -ne 0) {
        Write-Warning ($NuGetOutput | out-string)

        if ($LASTEXITCODE -eq 1 -and $NuGetOutput -match ' are already installed') {
            Write-Verbose -Message 'Packages already installed, continuing.'
        }
        else {
            Pop-Location
            throw ("NuGet returned error {0} restoring NuGet tools." -f $LASTEXITCODE)
        }
    }
    else
    {
        $md5Hash | Out-File $PACKAGES_CONFIG_MD5 -Encoding "ASCII"
        Write-Verbose -Message ($NuGetOutput | out-string)
    }
    
    Pop-Location
}
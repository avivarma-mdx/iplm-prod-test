# Path to the user's profile script
$profilePath = $PROFILE

# Ensure the profile script exists
if (-not (Test-Path -Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force
}

# Append environment variables to the profile script
@"
`$env:MDX_ROOT_DIR="C:\dev\tau"
`$env:MDX_CONFIG_DIR="C:\dev\tau\src\methodics\test\config"
`$env:MDX_PI_SERVER="http://localhost:8080"
`$env:MDX_LICENSE_FILE="5289@flex.site.methodics-da.com"
`$env:MDX_PI_LOCALES_DIR="C:\dev\tau\locales"
`$env:P4PORT="12000"
`$env:MDX_PI_ASCII = 1
`$env:MDX_WORKSPACE_MANAGER = "PWM"
`$env:P4CONFIG=".p4config"
`$env:PRODUCT_PACKAGE="pi"
"@ | Add-Content -Path $profilePath
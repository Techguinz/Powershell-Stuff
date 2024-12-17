# If you don't have Pester installed, run this command
# Install-Module -Name Pester -Force
# This test code is written for PowerShell 5.1, if you're using Version 7, then the syntax will be wrong and you will receive errors
# Output the $PSVersionTable to verify your version of PowerShell

# Unload and reload the module so it will use the latest code
Remove-Module GreetMe -ErrorAction SilentlyContinue
Import-Module GreetMe -Verbose

#Test the module manifest
Describe "Test the module manifest"
Describe "Test Module Manfiest" {

$moduleManifestPath = Join-Path $PSScriptRoot "..\GreetMe.psd1"

 It "Module Manifest Exists" {
    Test-Path $moduleManifestPath | Should Be $true

 }

    It "Is the module manifest valid?" {
        Test-ModuleManifest $moduleManifestPath -ErrorVariable ManifestInvalid -ErrorAction SilentlyContinue
        $ManifestInvalid | Should Be $null
    }


}

#Test the Get-GreetingMessage Function
Describe "Get-GreetingMessage" {

    It "Returns a valid greeting message" {

        $Name = "John"
        $Greeting = Get-GreetingMessage -Name $Name
        $ExpectedGreeting = "Hello, $Name!*"
        $greeting | Should Match $ExpectedGreeting

    }
}
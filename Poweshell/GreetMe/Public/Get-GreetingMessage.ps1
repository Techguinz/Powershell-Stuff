# Function: Get-GreetingMessage
# Description: Generates a personalized greeting message for a user.
# Parameters:
#   - Name (string): The name of the user.
function Get-Greeting {
    #Get Parameters
    param(
        [parameter(Mandatory=$true)][string]$Name
    
    )

    #Get the Initial greeting
    $greeting = "Hello, $Name!"


    #Get a random message
    $greetingmessage = New-Greeting


    #Output the messages to the user
    Write-Output "$greeting $greetingmessage"

    #Return the Greeting
    return $greeting



}   

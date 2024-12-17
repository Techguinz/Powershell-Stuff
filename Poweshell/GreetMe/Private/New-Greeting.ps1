# Function: New-Greeting
# Description: Returns a random greeting message.
function New-Greeting {

    #Decalare message greetings
    $greetings = @(
        "Powershell Modules are very cool",
        "I am glad you are leraning about Powershell Modules"
        "PS Modules are the best!"
    )

        # Get a random message
        $greeting =$greetings | Get-Random

        #Return the greeting
        return $greeting
}
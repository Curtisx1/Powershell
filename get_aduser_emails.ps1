# Import the Active Directory module
Import-Module ActiveDirectory

# Import the CSV file
$csv = Import-Csv -Path 'C:\install\emails.csv'

# Create an array to hold the results
$results = @()

# Loop through each row in the CSV
foreach ($row in $csv) {
    # Get the email address from the row
    $email = $row.Email

    # Search for the user in Active Directory
    $user = Get-ADUser -Filter "EmailAddress -eq '$email'" -Properties EmailAddress, DistinguishedName

    # If the user was found
    if ($user) {
        # Get the OU from the user's DistinguishedName
        $ou = ($user.DistinguishedName -split ',', 2)[1]

        # Split the OU on the comma character and select the third part
        $specificOU = ($ou -split ',')[2]

        # Add the result to the results array
        $results += New-Object PSObject -Property @{
            'Email' = $email
            'OU' = $specificOU
        }
    } else {
        # Add the result to the results array
        $results += New-Object PSObject -Property @{
            'Email' = $email
            'OU' = 'User not found in Active Directory'
        }
    }
}

# Export the results to a CSV file
$results | Export-Csv -Path 'C:\install\branches.csv' -NoTypeInformation
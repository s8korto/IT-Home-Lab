Import-Module ActiveDirectory

$password = ConvertTo-SecureString "P@ssword123!" -AsPlainText -Force

New-ADUser `
    -Name "James Gordon" `
    -GivenName "James" `
    -Surname "Gordon" `
    -SamAccountName "jgordon" `
    -UserPrincipalName "jgordon@homelab.local" `
    -Path "OU=IT,DC=homelab,DC=local" `
    -AccountPassword $password `
    -Enabled $true
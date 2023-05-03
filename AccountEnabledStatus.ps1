Import-Csv "C:\Accounts.csv" | ForEach-Object 
{
$samAccountName = $_."samAccountName"
Get-ADUser -Filter {$samAccountName} | Select Name, SamAccountName,Enabled } 
} 
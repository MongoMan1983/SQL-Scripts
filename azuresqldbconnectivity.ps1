$parameters = @{
Server = 'jadonahoazsqleus2.database.windows.net'
#Subnet = '' #Managed Instance subnet CIDR range, in case of managed instance this parameter is mandatory
Database = 'Nintendo'

## Optional parameters (default values will be used if omitted)
SendAnonymousUsageData = $true #Set as $true (default) or $false
}

$ProgressPreference = "SilentlyContinue";
$scriptUrlBase = 'raw.githubusercontent.com/Azure/SQL-Connectivity-Checker/master'
Invoke-Command -ScriptBlock ([Scriptblock]::Create((iwr ($scriptUrlBase+'/AzureSQLConnectivityChecker.ps1')).Content)) -ArgumentList $parameters
#end

$inputpath = "C:\Powershell-Automation\URLs.txt" <#Input text file path here#>
$outputpath = "C:\Powershell-Automation\dnslookup_output.csv" <#Output .csv file path here#>
$NameList = Get-Content -Path $inputpath
$ServerList = @('8.8.8.8','8.8.4.4')
$FinalResult = @()
foreach ($Name in $NameList) 
{    
$tempObj = "" | Select-Object Name,IPAddress,Status,ErrorMessage    
try {        
$dnsRecord = Resolve-DnsName $Name -Server $ServerList -ErrorAction Stop | Where-Object {$_.Type -eq 'A'}
$tempObj.Name = $Name
$tempObj.IPAddress = ($dnsRecord.IPAddress -join ', ')
$tempObj.Status = 'DNS Entry Found'        
$tempObj.ErrorMessage = ''    }
catch {        
$tempObj.Name = $Name
$tempObj.IPAddress = ''
$tempObj.Status = 'No DNS Entry' 
$tempObj.ErrorMessage = $_.Exception.Message    }
$FinalResult += $tempObj} 
echo '*******************************************************************'
echo '********************+++ Task Complete...!!! +++********************'
echo '*******************************************************************'
return $FinalResult | Export-Csv -path $outputpath -NoTypeInformation
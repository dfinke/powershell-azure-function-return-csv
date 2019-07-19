param($Request, $TriggerMetadata)

$csv = @"
Name,Age
Test,1
TestA,2
"@

Push-OutputBinding -Name Response -Value @{
    StatusCode  = "ok"
    ContentType = "text/csv"
    Headers     = @{'Content-Disposition' = 'attachment;filename=response.csv' }
    Body        = $csv
}
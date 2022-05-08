function Set-ObjectProperties {
    [CmdletBinding()]
    Param([PSObject]$Object,
        [Hashtable]$Properties)

    foreach ($key in $Properties.Keys) {
        try {
            $Object.PSobject.Properties[$key].Value = $Properties[$key]
        } catch {
            Write-Error "Error setting property $key : $_"
        }
    }
}

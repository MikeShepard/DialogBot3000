function Get-DB3kFont{
    [CmdletBinding()]
    Param([Hashtable]$Properties = @{},
    [Switch]$DialogOnly)

        $dlg=new-object System.Windows.Forms.FontDialog
    Set-ObjectProperties -object $dlg -Properties $Properties
    if ($DialogOnly) {
        return $dlg
    }
    Show-DialogForResult $dlg Font -throw
}

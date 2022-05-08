function Get-DB3kFile {
    [CmdletBinding()]
    Param([Hashtable]$Properties = @{},
        [Switch]$DialogOnly)

    $dlg = new-object System.Windows.Forms.OpenFileDialog
    Set-ObjectProperties -object $dlg -Properties $Properties
    if ($DialogOnly) {
        return $dlg
    }
    Show-DialogForResult $dlg FileName -throw
}

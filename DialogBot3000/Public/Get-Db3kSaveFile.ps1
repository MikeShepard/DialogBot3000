function Get-DB3kSaveFile {
    [CmdletBinding()]
    Param([Hashtable]$Properties = @{},
        [Switch]$DialogOnly)
        
    $dlg = new-object System.Windows.Forms.SaveFileDialog
    Set-ObjectProperties -object $dlg -Properties $Properties
    if ($DialogOnly) {
        return $dlg
    }
    Show-DialogForResult $dlg FileName -throw
}

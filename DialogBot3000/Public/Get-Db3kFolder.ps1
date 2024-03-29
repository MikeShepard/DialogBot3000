function Get-DB3kFolder {
    [CmdletBinding()]
    Param([Hashtable]$Properties = @{},
        [Switch]$DialogOnly)

    $dlg = new-object System.Windows.Forms.FolderBrowserDialog
    Set-ObjectProperties -object $dlg -Properties $Properties
    if ($DialogOnly) {
        return $dlg
    }
    Show-DialogForResult $dlg SelectedPath -throw
}

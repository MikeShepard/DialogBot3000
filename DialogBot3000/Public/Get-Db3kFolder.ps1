function Get-DB3kFolder{
    [CmdletBinding()]
    Param()

    $dlg=new-object System.Windows.Forms.FolderBrowserDialog
    $result=$dlg.ShowDialog()
    $dlg.FileName
}

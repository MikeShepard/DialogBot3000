function Get-DB3kFile{
    [CmdletBinding()]
    Param()

    $dlg=new-object System.Windows.Forms.OpenFileDialog
    $result=$dlg.ShowDialog()
    $dlg.FileName
}

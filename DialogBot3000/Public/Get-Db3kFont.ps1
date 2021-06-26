function Get-DB3kFont{
    [CmdletBinding()]
    Param()

    $dlg=new-object System.Windows.Forms.FontDialog
    $result=$dlg.ShowDialog()
    $dlg.Font
}
g

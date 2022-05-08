function Show-DialogForResult{
   [CmdletBinding()]
   Param([System.Windows.Forms.CommonDialog]$Dialog,
         $Property,
         [switch]$Throw)
    $dialogResult=$dialog.ShowDialog()
    if ($dialogResult -eq $true) {
        return $dialog.$Property
    }
    if($Throw){
        Throw "Dialog was not accepted"
    }
}

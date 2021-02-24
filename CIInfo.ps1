[reflection.assembly]::LoadwithPartialName("System.windows.Forms") | Out-Null

$basicForm = New-Object System.windows.Forms.Form
$folderForm = New-Object System.Windows.Forms.Form

$pathTextBox = New-Object System.Windows.Forms.TextBox
$pathTextBox.Location = '20,20'
$pathTextBox.Size = '100,20'
$folderForm.Controls.Add($pathTextBox)

$pathTextBox2 = New-Object System.Windows.Forms.TextBox
$pathTextBox2.Location = '20,60'
$pathTextBox2.Size = '100,20'
$folderForm.Controls.Add($pathTextBox2)

$pathTextBox3 = New-Object System.Windows.Forms.TextBox
$pathTextBox3.Location = '20,100'
$pathTextBox3.Size = '100,20'
$folderForm.Controls.Add($pathTextBox3)

$pathTextBox4 = New-Object System.Windows.Forms.TextBox
$pathTextBox4.Location = '20,140'
$pathTextBox4.Size = '100,20'
$folderForm.Controls.Add($pathTextBox4)

$pathTextBox5 = New-Object System.Windows.Forms.TextBox
$pathTextBox5.Location = '20,180'
$pathTextBox5.Size = '100,20'
$folderForm.Controls.Add($pathTextBox5)

$pathTextBox6 = New-Object System.Windows.Forms.TextBox
$pathTextBox6.Location = '20,220'
$pathTextBox6.Size = '100,20'
$folderForm.Controls.Add($pathTextBox6)

$pathTextBox7 = New-Object System.Windows.Forms.TextBox
$pathTextBox7.Location = '20,260'
$pathTextBox7.Size = '100,20'
$folderForm.Controls.Add($pathTextBox7)

$pathTextBox8 = New-Object System.Windows.Forms.TextBox
$pathTextBox8.Location = '20,300'
$pathTextBox8.Size = '100,20'
$folderForm.Controls.Add($pathTextBox8)

$pathTextBox9 = New-Object System.Windows.Forms.TextBox
$pathTextBox9.Location = '20,340'
$pathTextBox9.Size = '100,20'
$folderForm.Controls.Add($pathTextBox9)

$selectButton = New-Object System.Windows.Forms.Button

$selectButton.Text = 'Register'
$selectButton.Location = '20,380'

$folderForm.Controls.Add($selectButton)


$folderForm.ShowDialog()

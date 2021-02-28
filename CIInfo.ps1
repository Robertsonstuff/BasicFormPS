[reflection.assembly]::LoadwithPartialName("System.windows.Forms") | Out-Null

$basicForm = New-Object System.windows.Forms.Form
$folderForm = New-Object System.Windows.Forms.Form


$folderForm.Text ="Luke's CI Form"
$folderForm.width = 300
$folderForm.Height = 470
$folderForm.AutoSize = $True

$label = New-Object System.Windows.Forms.Label
$label.Name = "Status"
$label.Location = '20,15'
$label.Size = '70,13'
$label.Text = "Status"
$folderForm.Controls.Add($label)

$pathTextBox = New-Object System.Windows.Forms.TextBox
$pathTextBox.Location = '20,30'
$pathTextBox.Size = '100,20'
$folderForm.Controls.Add($pathTextBox)

$label2 = New-Object System.Windows.Forms.Label
$label2.Name = "FriendlyName"
$label2.Location = '20,55'
$label2.Size = '200,13'
$label2.Text = "Friendly Name, Alt CI, Serial Number"
$folderForm.Controls.Add($label2)

$pathTextBox2 = New-Object System.Windows.Forms.TextBox
$pathTextBox2.Location = '20,70'
$pathTextBox2.Size = '100,20'
$folderForm.Controls.Add($pathTextBox2)

$label3 = New-Object System.Windows.Forms.Label
$label3.Name = "Asset"
$label3.Location = '20,95'
$label3.Size = '200,13'
$label3.Text = "Asset Number / DOH Number"
$folderForm.Controls.Add($label3)

$pathTextBox3 = New-Object System.Windows.Forms.TextBox
$pathTextBox3.Location = '20,110'
$pathTextBox3.Size = '100,20'
$folderForm.Controls.Add($pathTextBox3)

$label4 = New-Object System.Windows.Forms.Label
$label4.Name = "CI Type"
$label4.Location = '20,135'
$label4.Size = '200,13'
$label4.Text = "CI Type"
$folderForm.Controls.Add($label4)

$pathTextBox4 = New-Object System.Windows.Forms.TextBox
$pathTextBox4.Location = '20,150'
$pathTextBox4.Size = '100,20'
$folderForm.Controls.Add($pathTextBox4)

$label5 = New-Object System.Windows.Forms.Label
$label5.Name = "Model"
$label5.Location = '20,175'
$label5.Size = '200,13'
$label5.Text = "Model"
$folderForm.Controls.Add($label5)

$pathTextBox5 = New-Object System.Windows.Forms.TextBox
$pathTextBox5.Location = '20,190'
$pathTextBox5.Size = '100,20'
$folderForm.Controls.Add($pathTextBox5)

$label6 = New-Object System.Windows.Forms.Label
$label6.Name = "Primary Contact"
$label6.Location = '20,215'
$label6.Size = '200,13'
$label6.Text = "Primary Contact"
$folderForm.Controls.Add($label6)

$pathTextBox6 = New-Object System.Windows.Forms.TextBox
$pathTextBox6.Location = '20,230'
$pathTextBox6.Size = '100,20'
$folderForm.Controls.Add($pathTextBox6)

$label7 = New-Object System.Windows.Forms.Label
$label7.Name = "Building Location"
$label7.Location = '20,255'
$label7.Size = '200,13'
$label7.Text = "Building Location"
$folderForm.Controls.Add($label7)

$pathTextBox7 = New-Object System.Windows.Forms.TextBox
$pathTextBox7.Location = '20,270'
$pathTextBox7.Size = '100,20'
$folderForm.Controls.Add($pathTextBox7)

$label8 = New-Object System.Windows.Forms.Label
$label8.Name = "Room Location"
$label8.Location = '20,295'
$label8.Size = '200,13'
$label8.Text = "Room Location"
$folderForm.Controls.Add($label8)

$pathTextBox8 = New-Object System.Windows.Forms.TextBox
$pathTextBox8.Location = '20,310'
$pathTextBox8.Size = '100,20'
$folderForm.Controls.Add($pathTextBox8)

$selectButton = New-Object System.Windows.Forms.Button
$selectButton.Text = 'Register'
$selectButton.Location = '20,350'
$selectButton.Size = '170,50'

$folderForm.Controls.Add($selectButton)


$folderForm.ShowDialog()

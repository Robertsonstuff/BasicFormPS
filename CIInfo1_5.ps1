#Version 1.5 - add buttons - 
    [reflection.assembly]::LoadwithPartialName("System.windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null

    $itemlist = @("Latitude 7480","Latitude 7490","Latitude 7400","Latitude 7410","Latitude 5400","Latitude 7390")
    $itemlist2 = @("Sirius Building","Scarborough House")
    $itemlist3 = @("In Stock","In Service","In Repair","On Loan")	
    $basicForm = New-Object System.windows.Forms.Form
    $folderForm = New-Object System.Windows.Forms.Form
    $comboBox1 = New-Object System.Windows.Forms.ComboBox
    $comboBox2 = New-Object System.Windows.Forms.ComboBox
    $comboBox3 = New-Object System.Windows.Forms.ComboBox
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

    $folderForm.Text ="Luke's CI Form"
    $folderForm.width = 300
    $folderForm.Height = 430
    $folderForm.AutoSize = $True

    $label = New-Object System.Windows.Forms.Label
    $label.Name = "Status"
    $label.Location = '20,15'
    $label.Size = '70,15'
    $label.Text = "Status"
    $folderForm.Controls.Add($label)

    $comboBox3.DataBindings.DefaultDataSourceUpdateMode = 0
    $comboBox3.FormattingEnabled = $True
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 20
    $System_Drawing_Point.Y = 30
    $comboBox3.Location = $System_Drawing_Point
    $comboBox3.Name = "comboBox3"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 20
    $System_Drawing_Size.Width = 100
    $comboBox3.Size = $System_Drawing_Size
    $comboBox3.TabIndex = 2
    $comboBox3.Text = "Status"
    $folderForm.Controls.Add($comboBox3)
    
    #$pathTextBox1 = New-Object System.Windows.Forms.TextBox
    #$pathTextBox1.Location = '20,30'
    #$pathTextBox1.Size = '100,20'
    #$folderForm.Controls.Add($pathTextBox1)

    $label2 = New-Object System.Windows.Forms.Label
    $label2.Name = "FriendlyName"
    $label2.Location = '20,55'
    $label2.Size = '200,15'
    $label2.Text = "Friendly Name, Alt CI, Serial Number"
    $folderForm.Controls.Add($label2)

    $pathTextBox2 = New-Object System.Windows.Forms.TextBox
    $pathTextBox2.Location = '20,70'
    $pathTextBox2.Size = '100,20'
    $folderForm.Controls.Add($pathTextBox2)

    $label3 = New-Object System.Windows.Forms.Label
    $label3.Name = "Asset"
    $label3.Location = '20,95'
    $label3.Size = '200,15'
    $label3.Text = "Asset Number / DOH Number"
    $folderForm.Controls.Add($label3)

    $pathTextBox3 = New-Object System.Windows.Forms.TextBox
    $pathTextBox3.Location = '20,110'
    $pathTextBox3.Size = '100,20'
    $folderForm.Controls.Add($pathTextBox3)

    $label5 = New-Object System.Windows.Forms.Label
    $label5.Name = "Model"
    $label5.Location = '20,135'
    $label5.Size = '200,15'
    $label5.Text = "Model"
    $folderForm.Controls.Add($label5)

    $comboBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $comboBox1.FormattingEnabled = $True
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 20
    $System_Drawing_Point.Y = 150
    $comboBox1.Location = $System_Drawing_Point
    $comboBox1.Name = "comboBox1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 20
    $System_Drawing_Size.Width = 150
    $comboBox1.Size = $System_Drawing_Size
    $comboBox1.TabIndex = 2
    $comboBox1.Text = "Model"
    $folderForm.Controls.Add($comboBox1)

    $label6 = New-Object System.Windows.Forms.Label
    $label6.Name = "Primary Contact"
    $label6.Location = '20,175'
    $label6.Size = '200,15'
    $label6.Text = "Primary Contact"
    $folderForm.Controls.Add($label6)

    $pathTextBox6 = New-Object System.Windows.Forms.TextBox
    $pathTextBox6.Location = '20,190'
    $pathTextBox6.Size = '150,20'
    $folderForm.Controls.Add($pathTextBox6)

    $label7 = New-Object System.Windows.Forms.Label
    $label7.Name = "Building Location"
    $label7.Location = '20,215'
    $label7.Size = '200,15'
    $label7.Text = "Building Location"
    $folderForm.Controls.Add($label7)
    
    $comboBox2.DataBindings.DefaultDataSourceUpdateMode = 0
    $comboBox2.FormattingEnabled = $True
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 20
    $System_Drawing_Point.Y = 230
    $comboBox2.Location = $System_Drawing_Point
    $comboBox2.Name = "comboBox2"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 20
    $System_Drawing_Size.Width = 150
    $comboBox2.Size = $System_Drawing_Size
    $comboBox2.TabIndex = 2
    $comboBox2.Text = "Building"
    $folderForm.Controls.Add($comboBox2)



    #$pathTextBox7 = New-Object System.Windows.Forms.TextBox
    #$pathTextBox7.Location = '20,255'
    #$pathTextBox7.Size = '150,20'
    #$folderForm.Controls.Add($pathTextBox7)

    $label8 = New-Object System.Windows.Forms.Label
    $label8.Name = "Room Location"
    $label8.Location = '20,255'
    $label8.Size = '200,15'
    $label8.Text = "Room Location"
    $folderForm.Controls.Add($label8)

    $pathTextBox8 = New-Object System.Windows.Forms.TextBox
    $pathTextBox8.Location = '20,270'
    $pathTextBox8.Size = '50,20'
    $folderForm.Controls.Add($pathTextBox8)
 
    $selectButton = New-Object System.Windows.Forms.Button
    $selectButton.Text = 'Register'
    $selectButton.Location = '20,320'
    $selectButton.Size = '170,50'

    $folderForm.Controls.Add($SelectButton)

    foreach ($i in $itemlist)
{
    $comboBox1.items.Add($i)
}

    foreach ($i in $itemlist2)
{
     $comboBox2.items.Add($i)
}

    foreach ($i in $itemlist3)
{
     $comboBox3.items.Add($i)
}

#$SelectButton.Add_Click(
#{
#    $combobox1.items.Clear()
#   get-content U:\desktop\list.txt | % {

#   $comboBox1.items.add($_)

#   } 
#}
#)



    #Add Button event 
    $SelectButton.Add_Click(
        {    
        [reflection.assembly]::LoadwithPartialName("System.windows.Forms") | Out-Null

        #$Combobox1.items.Clear()
        #get-content U:\desktop\list.txt | % {

        #$comboBox1.items.add($_)
        #}

        Add-Type -AssemblyName System.Windows.Forms
        Add-Type -AssemblyName System.Drawing

        $basicForm20 = New-Object System.windows.Forms.Form
        $folderForm20 = New-Object System.Windows.Forms.Form

        Add-Type -AssemblyName System.Windows.Forms
        Add-Type -AssemblyName System.Drawing

        $folderForm20.Text ="CI Output"
        $folderForm20.width = 300
        $folderForm20.Height = 325
        $folderForm20.AutoSize = $True

        $label20 = New-Object System.Windows.Forms.Label
        $label20.Name = "Status2"
        $label20.Location = '20,15'
        $label20.Size = '70,15'
        $label20.Text = "Output:"
        $folderForm20.Controls.Add($label20)

	$outputBox20 = New-Object System.Windows.Forms.TextBox
        $outputBox20.Location = '20,32'
        $outputBox20.Size = '240,225'
        $outputBox20.Multiline = $True
        $folderForm20.Controls.Add($outputBox20)

        $outputBox20.AppendText("-----------These items below have been updated / created in the CMDB-----------")
	
	$outputBox20.AppendText("`r`n`r`n")

	$outputBox20.AppendText("`r`n`r`nStatus: ")
	$outputBox20.AppendText($comboBox3.text)

	$outputBox20.AppendText("`r`nAlt CI: UCLP")
	$outputBox20.AppendText($pathTextBox2.text)

	$outputBox20.AppendText("`r`nSerial Number: ")
	$outputBox20.AppendText($pathTextBox2.text)

	$outputBox20.AppendText("`r`nAsset Number: ")
	$outputBox20.AppendText($pathTextBox3.text)

	$outputBox20.AppendText("`r`nCI SubType: Laptop")
	
	$outputBox20.AppendText("`r`nModel: ")
	$outputBox20.AppendText($comboBox1.text)
	
	$outputBox20.AppendText("`r`nPrimary Contact: ")
	$outputBox20.AppendText($pathTextBox6.text)
	
	$outputBox20.AppendText("`r`nBuilding Location: ")
	$outputBox20.AppendText($comboBox2.text)


	$outputBox20.AppendText("`r`nRoom Location: ")
	$outputBox20.AppendText($pathTextBox8.text)


	$StatusBar = New-Object System.Windows.Forms.StatusBar
    	$StatusBar.Text = "Copied To Clipboard"
    	$StatusBar.Height = 22
    	$StatusBar.Width = 200
    	$StatusBar.Location = New-Object System.Drawing.Point( 0, 250 )
    	$folderForm20.Controls.Add($StatusBar)
    
        $copyText = $outputBox20.Text.Trim()

        [System.Windows.Forms.Clipboard]::SetText($copyText)

        if ([System.Windows.Forms.Clipboard]::ContainsText() -AND
            [System.Windows.Forms.Clipboard]::GetText() -eq $copyText)
	{
	Write-Progress -Activity Updating -Status 'Copied To Clipboard' 
    	}
	$comboBox3.SelectedIndex =-1
	$pathTextBox2.Clear()
	$pathTextBox3.Clear()
	$pathTextBox6.Clear()
	$pathTextBox8.Clear()
	$comboBox1.SelectedIndex =-1
	$comboBox2.SelectedIndex =-1
        $folderForm20.ShowDialog()
  }
    )


$folderForm.ShowDialog()
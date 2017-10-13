                  Write-Output  "Tüm TCP ve UDP baðlantýlarýný getirir">>powershell.txt
	 netstat -a
                  
	"Write-Output">>powershell.txt  IP yönlendirme tablosunun içeriðini getirir.
	 netstat -r                                                 

	  "Write-Output">>powershell.txt   Masaüstü ayarlarýný getirir
	Get-WmiObject -Class Win32_Desktop -ComputerName .
	
	
	"Write-Output">>powershell.txt Bios bilgilerini getirir
	Get-WmiObject -Class Win32_BIOS -ComputerName .


	"Write-Output">>powershell.txt Ýþlemci bilgisini getirir
	Get-WmiObject -Class Win32_Processor -ComputerName . | Select-Object -Property [a-z]*

	"Write-Output">>powershell.txt Ýþletim sistemi sürüm bilgisini getirir
	Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 		 				BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion

	"Write-Output">>powershell.txt Kullanýcý bilgilerini getirir
	Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 						NumberOfLicensedUsers,NumberOfUsers,RegisteredUser
	

	"Write-Output">>powershell.txt  Yerel kullanýcýlarý ve sahibi listeleme

	"write output">>powershell.txt  Domain,ram miktarý,üretici firma bilgisini getirir	
	Get-WmiObject –Class win32_computersystem    
	

                "Write-Output">>powershell.txt Schedule tasklarý	
	schtasks | Where-Object { $_ -Match "Ready*" -or $_ -Match "Running*"}
	

                 "Write-Output">>powershell.txt Oturun açmýþ kullanýlarýn listesini getirir.	
	Get-WmiObject -Class Win32_LogonSession -ComputerName . --

	 "Write-Output">>powershell.txt Grup hakkýnda bilgileri getirir
	get-wmiobject win32_group
	









                  Write-Output  "T�m TCP ve UDP ba�lant�lar�n� getirir">>powershell.txt
	 netstat -a
                  
	"Write-Output">>powershell.txt  IP y�nlendirme tablosunun i�eri�ini getirir.
	 netstat -r                                                 

	  "Write-Output">>powershell.txt   Masa�st� ayarlar�n� getirir
	Get-WmiObject -Class Win32_Desktop -ComputerName .
	
	
	"Write-Output">>powershell.txt Bios bilgilerini getirir
	Get-WmiObject -Class Win32_BIOS -ComputerName .


	"Write-Output">>powershell.txt ��lemci bilgisini getirir
	Get-WmiObject -Class Win32_Processor -ComputerName . | Select-Object -Property [a-z]*

	"Write-Output">>powershell.txt ��letim sistemi s�r�m bilgisini getirir
	Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 		 				BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion

	"Write-Output">>powershell.txt Kullan�c� bilgilerini getirir
	Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 						NumberOfLicensedUsers,NumberOfUsers,RegisteredUser
	

	"Write-Output">>powershell.txt  Yerel kullan�c�lar� ve sahibi listeleme

	"write output">>powershell.txt  Domain,ram miktar�,�retici firma bilgisini getirir	
	Get-WmiObject �Class win32_computersystem    
	

                "Write-Output">>powershell.txt Schedule tasklar�	
	schtasks | Where-Object { $_ -Match "Ready*" -or $_ -Match "Running*"}
	

                 "Write-Output">>powershell.txt Oturun a�m�� kullan�lar�n listesini getirir.	
	Get-WmiObject -Class Win32_LogonSession -ComputerName . --

	 "Write-Output">>powershell.txt Grup hakk�nda bilgileri getirir
	get-wmiobject win32_group
	









netstat -a ile tüm TCP ve UDP baðlantýlarýný getirdi
netstat -r ile IP yönlendirme tablosunun içeriðini getirdi

Get-WmiObject -Class Win32_Desktop -ComputerName .
ile Masaüstü ayarlarýný getirdi

Get-WmiObject -Class Win32_BIOS -ComputerName . ile Bios bilgilerini getirdi
 
Get-WmiObject -Class Win32_Processor -ComputerName . | Select-Object -Property [a-z]* ile  Ýþlemci bilgisini getirdi


Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 		 				BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion   ile  Ýþletim sistemi sürüm bilgisini getirdi 

Get-WmiObject -Class Win32_OperatingSystem -ComputerName . | Select-Object -Property 						NumberOfLicensedUsers,NumberOfUsers,RegisteredUser  ile kullanýcý bilgilerini getirdi

Get-WmiObject –Class win32_computersystem ile domain ,ram ve üretici firma hakkýndaki bilgileri getirdi  

schtasks | Where-Object { $_ -Match "Ready*" -or $_ -Match "Running*"} ile schedule tasklarýný getirdi

Get-WmiObject -Class Win32_LogonSession -ComputerName . -- ile oturum açmýþ kullanýcýlarýn listesini getirdi

get-wmiobject win32_group  ile  Grup hakkýnda bilgileri getirdi

Get-ADDomainController  ile dc hakkýndaki bilgileri getirdi






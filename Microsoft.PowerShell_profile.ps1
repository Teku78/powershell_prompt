# author: _teku
<#
	*Para habilitar la ejecucion de scripts ejecuta: "Set-ExecutionPolicy Unrestricted" como administrador.
	*Para hacer uso de los iconos uar las siguientes tipografias: Ubuntu Nerd Fonts, Dejavu Fonts.
	*En caso de que las fuentes se distorcionen cambia el formato de del archivo con el siguiente comando:
	"GetCurrent Microsoft.PowerShell_profile.ps1 | Set-Content -Encoding BigEndianUnicode Microsoft.PowerShell_profile.ps1
#>
function fetchneo {

	$user = ("$ENV:USERNAME@$ENV:COMPUTERNAME")
    $oS = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName
    $ReleaseId = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId
	$processor =  (Get-Wmiobject Win32_Processor).name
    $video = (Get-WmiObject win32_VideoController).name

	Write-Host " ###########  ################" -nonewline -F Cyan
    write-Host " $user" -F Yellow
	Write-Host " ###########  ################" -F Cyan -nonewline
    # write-Host " -----------------------------"
    Write-Host " OS: " -F Green -nonewline;$oS
	Write-Host " ###########  ################" -F Cyan -nonewline
    Write-Host " Version: " -F Green -nonewline;$ReleaseId
	Write-Host " ###########  ################" -F Cyan -nonewline
    Write-Host " CPU: " -F Green -nonewline;$processor
	Write-Host " ###########  ################" -F Cyan -nonewline
    Write-Host " GPU: " -F Green -nonewline;$video
	Write-Host " -----------  ----------------" -F Cyan
	Write-Host " ###########  ################" -F Cyan
	Write-Host " ###########  ################" -F Cyan
	Write-Host " ###########  ################" -F Cyan
	Write-Host " ###########  ################" -F Cyan
    Write-Host " ###########  ################" -F Cyan


}

Clear-Host


function Prompt {
	#   write-Host "`n" -nonewline  -F Whit # llamas
   Write-Host "" -nonewline -B Blue -F Whit # Flecha
   Write-Host " 者" -nonewline -B Blue -F Whit # windows
   Write-Host "" -nonewline -B DarkGray -F Blue # Flecha
   if([bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match"S-1-5-32-544")) {
      write-Host "  " -nonewline -B DarkGray -F Green # Candado abierto
   } else {
      write-Host "  " -nonewline -B DarkGray -F Whit # Candado cerrado
   }
   Write-Host "" -nonewline -B Green -F DarkGray # Flecha
   Write-Host ("$ENV:USERNAME")  -nonewline -B Green -F Black
   Write-Host "" -nonewline -B Blue -F Green # Flecha
	# devuelve la ruta absoluta mostrando el ultimo directorio
   Write-Host  $(Split-Path $PWD -leaf ).Replace("$ENV:USERNAME",'~') -nonewline -B Blue -F Whit
   Write-Host "" -nonewline -F Blue # Flecha

   return " "
}
fetchneo
# Alias
Set-Alias st -Value subl
Set-Alias v -Value nvim



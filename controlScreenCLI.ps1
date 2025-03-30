# Tool is used to control monitors and choose which input (HDMI, DisplayPort, etc) they use. Usefull when chaning from private to business laptop.
# Could be atached as key board shorcuts. Now I have it setup ctrl+alt+home and ctrol+alt+end
# Script use tool called ControMyMonitor. It uses protocol to contact attached external screen to PC. 
# https://www.nirsoft.net/utils/control_my_monitor.html

$screenBenq  = "\\.\DISPLAY1\Monitor0"
$screenDellL = "\\.\DISPLAY3\Monitor0"
$screenDellR = "\\.\DISPLAY2\Monitor0"

$vcpCode = "60" #input select

#ForBenQ
$codeInput = [PSCustomObject]@{
    HDMI        = "18"
    DisplayPort = "15"
}

##########################
# Business Comptuer Setup
Start-Process -FilePath "C:\ControlMyMonitor.exe" `
    -ArgumentList "/SetValueIfNeeded $screenBenq  $vcpCode 18" -Wait

Start-Process -FilePath "C:\ControlMyMonitor.exe" `
    -ArgumentList "/SetValueIfNeeded $screenDellR $vcpCode 15" -Wait


#######################################
# Private Computer Setup
Start-Process -FilePath "C:\ControlMyMonitor.exe" `
    -ArgumentList "/SetValueIfNeeded $screenBenq  $vcpCode 15" -Wait

Start-Process -FilePath "C:\ControlMyMonitor.exe" `
    -ArgumentList "/SetValueIfNeeded $screenDellR $vcpCode 4369" -Wait

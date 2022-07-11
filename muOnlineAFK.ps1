# Script for playing Mu Online game
# Grabing name of game window and checking if character has 400 lvl
# If TRUE play system BEEP

$minutes = 0
while ($True)
{
    $temp = Get-Process | Select MainWindowTitle | where{($_.MainWindowTitle -ne "") -and ($_.MainWindowTitle -like "War*")}
    if ($temp.MainWindowTitle -Like "*Level: 400*") 
    {
        Write-Output "rr"
        [console]::beep(500,300)
        Sleep(1)
        $minutes = 0
    }    
    else {Sleep(60); Write-Output "sleep ${minutes}"; $minutes++}
}

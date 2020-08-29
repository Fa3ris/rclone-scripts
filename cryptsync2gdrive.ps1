# directory to sync
$dir = "$HOME/Documents/rclone-test"

# remote directory to sync
$pathCurrent = "crypt-googleDrive:current"

$saveDate = Get-Date -Format "yyyyMMddHHmmss"

# remote directory to copy files modified/deleted/renamed by sync 
$pathSave = "crypt-googleDrive:old/$saveDate"

Write-Output "sync folder $dir to gdrive in $pathCurrent and saving previous backup to $pathSave"

rclone.exe sync $dir $pathCurrent --progress -vvvvv --log-file "$HOME/Documents/rclone.log" --backup-dir $pathSave

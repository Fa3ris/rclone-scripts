$dir = "$HOME/Documents/rclone-test"
$path = "googleDrive:backup"

Write-Output "sync folder $dir to gdrive"

rclone.exe sync $dir $path --progress -vvvvv --log-file "$HOME/Documents/rclone.log"

$dir = "$HOME/Documents/rclone-test"

# Set-Location $dir
Write-Output "sync folder $dir to gdrive"

rclone.exe copy $dir googleDrive:backup --progress -vvvvv --log-file "$HOME/Documents/rclone.log"

# Show free space on every drive
Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{n="Free (GB)";e={[math]::Round($_.Free/1GB,1)}}, @{n="Used (GB)";e={[math]::Round($_.Used/1GB,1)}}

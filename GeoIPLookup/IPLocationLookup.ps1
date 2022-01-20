 $Filename =Read-Host "Enter output file name"
 import-csv .\IPFile.csv | foreach {curl -s ipinfo.io/$($_.IP) |convertfrom-json | select ip,city } | Export-Csv "$Filename.csv"
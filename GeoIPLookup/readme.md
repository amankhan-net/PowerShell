# Usage
Update the sample csv file named IPFile.csv and execute the powershell script. This script uses curl to query ipinfo.io for the ip addresses provided.


```
C:\User\UserName> .\IPLocationLookup.ps1
Enter output file name:

Sample Output file:

![csv file](https://github.com/amankhan-net/PowerShell/blob/main/GeoIPLookup/screenshot.png)



To view view the output on screen comment out "export-csv" part.

ip            city
--            ----
23.129.64.131 Federal Way
167.94.138.58 Chicago
23.129.64.141 Federal Way
162.142.125.… Chicago
23.129.64.146 Federal Way
```

# License
GNU GPL
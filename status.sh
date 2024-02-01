date_formatted=$(date +'%d.%m.%Y %H:%M:%S')
ram_percent=$(free | grep Mem | awk '{printf("%.2f%"), $3/$2 * 100.0}')
cpu_avg_percent=$(uptime | awk '{printf "%.2f%", substr($9, 1, length($9)-1)*100}')

echo "Avg. CPU: $cpu_avg_percent | RAM: $ram_percent | $date_formatted"

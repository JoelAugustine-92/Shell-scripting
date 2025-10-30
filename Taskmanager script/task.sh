

cpu_threshold=2
mem_threshold=2
disk_threshold=2


cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')


mem_usage=$(free | awk '/Mem/ {printf("%.2f", $3/$2 * 100)}')

# Get Disk usage percentage (root partition)
disk_usage=$(df / | awk 'NR == 2 {print $5}' | sed 's/%//')

# Function to send alert message and log it
send_alert() {
    echo "ALERT: $1 usage is at $2%" | tee -a /tmp/resource_alerts.log
}

# Compare current usage with thresholds and trigger alert if needed
if (( ${cpu_usage%.*} > cpu_threshold )); then
    send_alert "CPU" "$cpu_usage"
fi

if (( ${mem_usage%.*} > mem_threshold )); then
    send_alert "Memory" "$mem_usage"
fi

if (( ${disk_usage%.*} > disk_threshold )); then
    send_alert "Disk" "$disk_usage"
fi


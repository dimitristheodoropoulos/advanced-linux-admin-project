#Monitors system performance (CPU usage, memory usage, disk usage).Sends alerts if thresholds are breached.
#!/bin/bash
# Monitor system resources
THRESHOLD=80
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
if (( $(echo "$CPU_LOAD > $THRESHOLD" | bc -l) )); then
    echo "CPU Load is high: $CPU_LOAD%" | mail -s "CPU Alert" admin@example.com
fi

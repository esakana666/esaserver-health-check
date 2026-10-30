#!/bin/bash
# server-health-check - portfolio S.Kom
echo "=== Server Health Check - Bogor ==="
echo "CPU Load: $(uptime | awk -F'load average:' '{print $2}')"
echo "RAM: $(free -h | grep Mem | awk '{print $3"/"$2}')"
echo "Disk: $(df -h / | tail -1 | awk '{print $3"/"$2" ("$5" used)"}')"
echo "Date: $(date)"

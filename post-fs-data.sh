#!/system/bin/sh

# Set SELinux to Enforcing mode
# The setenforce 1 command is located in /system/bin/
/system/bin/setenforce 1

# Optional: Add a log entry for debugging/verification (visible via dmesg or logcat)
echo "SELinux forced to Enforcing." > /dev/kmsg

# The script exits successfully
exit 0
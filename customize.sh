#!/system/bin/sh

# Function to print messages to the installer UI
ui_print() { echo "$1"; }

ui_print "***************************************************"
ui_print "  KernelSU SELinux Enforcer Module Installer"
ui_print "***************************************************"
ui_print "- Author: MarsTianZ"
ui_print "- Forcing SELinux to Enforcing..."
ui_print ""

# The module installation process will proceed after this script finishes.

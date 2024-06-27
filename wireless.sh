#!/bin/bash

# Function to display a header
print_header() {
    echo "=================================================="
    echo "Wireless Device Scanner [This tool is only for scanning]"
    echo "=================================================="
    echo
}

# Function to list nearby Wi-Fi networks
list_wifi_networks() {
    echo "Nearby Wi-Fi Networks:"
    sudo iwlist scan | grep 'ESSID\|Signal\|Frequency\|Quality'
    echo
}

# Main script starts here
clear
print_header

# Check if iwlist is installed
if ! command -v iwlist &> /dev/null; then
    echo "Required tool (iwlist) is not installed. Please install it and try again."
    exit 1
fi

# List nearby Wi-Fi networks
list_wifi_networks

echo "Script has finished scanning for nearby networks!"

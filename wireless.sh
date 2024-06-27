#!/bin/bash

# Function to display a header
print_header() {
    echo "=================================================="
    echo "Wireless Network Scanner {Termux Version}"
    echo "=================================================="
    echo
}

# Function to scan for nearby Wi-Fi networks
scan_wifi_networks() {
    echo "Scanning for nearby Wi-Fi networks..."
    termux-wifi-scaninfo
    echo
}

# Main script starts here
clear
print_header

# Check if termux-wifi-scaninfo command is available
if ! command -v termux-wifi-scaninfo &> /dev/null; then
    echo "Error: termux-wifi-scaninfo command not found."
    echo "Please make sure you are using Termux and have the necessary tools installed."
    exit 1
fi

# Scan for nearby Wi-Fi networks
scan_wifi_networks

echo "All avaliable nearby networks scanned!"

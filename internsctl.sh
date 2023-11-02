#!/bin/bash

# Function to get CPU information
function get_cpu_info() {
    lscpu
}

# Function to get memory information
function get_memory_info() {
    free
}

# Function to create a new user
function create_user() {
    username="$1"
    # Create user and set up home directory
    sudo useradd -m "$username"
}

# Function to list regular users
function list_users() {
    cut -d: -f1 /etc/passwd
}

# Function to list users with sudo permissions
function list_sudo_users() {
    getent group sudo | cut -d: -f4
}

# Function to get file information
function get_file_info() {
    file="$1"
    # Check for options
    case "$2" in
        "--size" | "-s")
            stat -c "%s" "$file"
            ;;
        "--permissions" | "-p")
            stat -c "%A" "$file"
            ;;
        "--owner" | "-o")
            stat -c "%U" "$file"
            ;;
        "--last-modified" | "-m")
            stat -c "%y" "$file"
            ;;
        *)
            echo "Usage: internsctl file getinfo [--size | -s | --permissions | -p | --owner | -o | --last-modified | -m] <file-name>"
            ;;
    esac
}

# Function to display the script version
function display_version() {
    echo "internsctl version v0.1.0"
}

# Main command
case "$1" in
    "cpu")
        get_cpu_info
        ;;
    "memory")
        get_memory_info
        ;;
    "user")
        case "$2" in
            "create")
                create_user "$3"
                ;;
            "list")
                if [[ "$3" == "--sudo-only" ]]; then
                    list_sudo_users
                else
                    list_users
                fi
                ;;
        esac
        ;;
    "file")
        if [ "$2" == "getinfo" ]; then
            get_file_info "$4" "$3"
        else
            echo "Usage: internsctl file getinfo [--size | -s | --permissions | -p | --owner | -o | --last-modified | -m] <file-name>"
        fi
        ;;
    "--version")
        display_version
        ;;
    *)
        echo "Usage: internsctl {cpu | memory | user | file | --version}"
        ;;
esac

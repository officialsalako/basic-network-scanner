# Network Scanner

## Description
The Network Scanner is a Bash script that scans a range of IP addresses to identify active hosts and open ports. This tool is useful for network administrators and security enthusiasts to monitor network activity and detect available services.

## Features
- Scan a range of IP addresses.
- Check for active hosts.
- Identify open ports on active hosts.
- Log results to a file.

## Prerequisites
- Bash (available on most Unix-based systems)
- `ping` command
- `netcat` or `nc` command for checking open ports

## Usage
1. Clone the repository:
    ```bash
    git clone https://github.com/officialsalako/basic-network-scanner.git
    cd stework_scanner
    ```

2. Make the script executable:
    ```bash
    chmod +x stework_scanner.sh
    ```

3. Run the script:
    ```bash
    ./network_scanner.sh
    ```

4. Follow the prompts to enter the IP range and start/stop addresses. The script will scan the specified range and log the results to `outputs.txt`.

## Example
```bash
Enter the IP address range (e.g., 192.168.1.):
192.168.1.
Enter the starting IP:
1
Enter the ending IP:
254


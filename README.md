# MAC Address Spoofing Script

This script allows you to spoof the MAC address of your wireless adapter. It generates a random MAC address and changes the current MAC address of the specified wireless interface.

## Usage

1. Open a command prompt.
2. Navigate to the directory where the script is located.
3. Run the script by executing the following command:

```shell
script.bat
```

## Script Explanation

- The script starts by searching for the wireless adapter interface name using the `netsh` command.
- Once the interface name is found, it generates a random MAC address using the `%random%` variable.
- The MAC address is then changed using the `macchanger` command, with the generated MAC address and the interface name as arguments.
- Finally, a success message is displayed indicating that the MAC address has been spoofed.

Note: Make sure you have the `macchanger` tool installed on your system for this script to work correctly.

## License

This script is released under the [MIT License](https://opensource.org/licenses/MIT).



# Spotify Track Skipper

This script allows you to skip the current track playing on Spotify using a DBus command. It also logs the operations to a specified log file.

## Requirements

- **Bash**
- **Spotify**
- **DBus**

## Installation

1. Save the script to a file, e.g., `spotifyskip.sh`.
2. Make the script executable:

   ```bash
   chmod +x spotifyskip.sh
   ```

## Usage

1. Open a terminal.
2. Run the script:

   ```bash
   ./spotifyskip.sh
   ```

## Script Details

- **Log File**: The script logs its operations to `/home/yourusername/spotifyskip.log`. You can change this path by modifying the `LOGFILE` variable in the script.

- **Logging**: The script redirects all output and errors to the specified log file.

- **Spotify Check**: The script checks if Spotify is running using the `pgrep` command. If Spotify is not running, it logs an error message and exits.

- **DBus Command**: If Spotify is running, the script sends a DBus command to skip the current track.

## Example Log Output

Below is an example of what the log file (`/home/yourusername/spotifyskip.log`) might contain after running the script:

```
Running skip_track function
Sending dbus command to skip track
```

If Spotify is not running, the log file would contain:

```
Running skip_track function
Spotify is not running.
```

## Notes

- Ensure that the DBus service for Spotify is available and accessible.
- Modify the log file path as needed for your environment.

## License

This script is released under the MIT License.


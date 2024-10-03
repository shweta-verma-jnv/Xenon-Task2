# sysopctl

**Version:** v0.1.0
**Author:** Shweta Verma

`sysopctl` is a simple system management script designed to help administrators manage system services, monitor system status, analyze logs, and perform backups through a variety of commands. It uses common Linux utilities like `systemctl`, `df`, `htop`, and `journalctl` to perform these tasks.

## Features

- List all running system services
- Start or stop specific services
- View system load and disk usage
- Monitor processes in real-time
- Analyze system logs
- Backup files or directories

## Requirements

- Bash (version 4.0 or higher)
- `systemctl` (for managing services)
- `df` (for checking disk usage)
- `htop` (for process monitoring)
- `journalctl` (for log analysis)
- `rsync` (for backups)

## Installation

### 1. Clone the repository

Clone the repository where the script is located:

```bash
git clone https://github.com/yourusername/sysopctl.git
cd sysopctl
```

### 2. Make the script executable

After cloning the repository and navigating into it, the first step is to ensure the script is executable. Run the following command:

```bash
chmod +x sysopctl.sh
```

### 3. Move the script to a directory in your system's `$PATH`

To use `sysopctl.sh` like any other command, move the script to a directory that is included in your system's `$PATH`. Common directories include `/usr/local/bin/` or `/usr/bin/`:

```bash
sudo mv sysopctl.sh /usr/local/bin/
```

This allows you to run the script from anywhere on your system by typing:

```bash
sysopctl.sh <command>
```

### 4. Install the man page

To install the man page for the script, copy the man page file to the appropriate directory (typically `/usr/local/share/man/man1/`):

1. Create a man page file named `sysopctl.1` (or download it from the repo if included).

2. Move it to the man page directory:

```bash
sudo cp sysopctl.1 /usr/local/share/man/man1/
```

3. Update the man page database:

```bash
sudo mandb
```

After this, you can access the manual for `sysopctl.sh` by running:

```bash
man sysopctl
```


## Usage

To use `sysopctl`, run the following command:

```bash
./sysopctl <command> [options]
```

### Available Commands

| Command | Description |
| ------- | ----------- |
| `service list` | List all running services |
| `service start <service>` | Start a specified service |
| `service stop <service>` | Stop a specified service |
| `system load` | View system load averages |
| `disk usage` | Show disk usage of all mounted partitions |
| `process monitor` | Monitor system processes in real-time |
| `logs analyze` | Analyze system logs using `journalctl` |
| `backup <path>` | Backup specified files or directories to the current directory |
| `--version` | Display the script version |
| `--help` | Display help information |

### Examples

- List running services:
  ```bash
  ./sysopctl service list
  ```

- Start the `nginx` service:
  ```bash
  ./sysopctl service start nginx
  ```

- View system load:
  ```bash
  ./sysopctl system load
  ```

- Backup a directory:
  ```bash
  ./sysopctl backup /path/to/directory
  ```

**Note:** This script uses `sudo` for some commands, so ensure you have the necessary privileges or use it in a context where `sudo` access is available.

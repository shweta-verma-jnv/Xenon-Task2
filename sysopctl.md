# SYSOPCTL.SH - System Management Script

**Version:** v0.1.0  
**Author:** Shweta Verma  
**Date:** October 2024

## NAME
**sysopctl** - A script for managing system services, monitoring system load, and performing various administrative tasks.

## SYNOPSIS
```bash
sysopctl [command] [options]
```

## DESCRIPTION
**sysopctl** is a Bash script designed to assist in managing services, viewing system status, and performing system administration tasks.

Commands include listing services, viewing system load, starting or stopping services, checking disk usage, monitoring processes, analyzing system logs, and performing backups.

## OPTIONS

- `service list`  
  List all running system services.

- `service start <service>`  
  Start a specified service.

- `service stop <service>`  
  Stop a specified service.

- `system load`  
  Display system load using `uptime`.

- `disk usage`  
  Show disk usage of all mounted partitions using `df -h`.

- `process monitor`  
  Monitor system processes using `htop`.

- `logs analyze`  
  Analyze system logs using `journalctl`.

- `backup <path>`  
  Backup specified files or directories to the current directory using `rsync`.

- `--version`  
  Display the script version.

- `--help`  
  Display help information and usage.

## EXAMPLES

- `sysopctl.sh service list`  
  List all running system services.

- `sysopctl.sh system load`  
  View the system load averages.

- `sysopctl.sh service start nginx`  
  Start the `nginx` service.

- `sysopctl.sh disk usage`  
  Display the current disk usage.

- `sysopctl.sh process monitor`  
  Open a real-time process monitor.

- `sysopctl.sh logs analyze`  
  Analyze the system's logs.

- `sysopctl.sh backup /path/to/directory`  
  Backup the specified directory to the current working directory.

- `sysopctl.sh --version`  
  Display the script version information.

## AUTHOR
Developed by **Shweta Verma**.

## VERSION
**v0.1.0**

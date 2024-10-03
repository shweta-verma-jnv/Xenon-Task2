#!/bin/bash

VERSION="v0.1.0"

# Show program usage and exit gracefully
usage() {
    echo "Usage: $0 <command> [options]"
    echo "Commands:"
    echo "  service list             list running services"
    echo "  system load              view system load"
    echo "  service start <service>  start a service"
    echo "  service stop <service>   stop a service"
    echo "  disk usage               check disk usage"
    echo "  process monitor          monitor system process"
    echo "  logs analyze             analuze system logs"
    echo "  backup <path>            backup files to current directory"
    echo "Options:"
    echo "  --version                show command version"
    echo "  --help                   show this help message"
	exit 0
}

# display running services
show_running_services() {
	systemctl --type=service --state=running
}

# display system load
show_system_load() {
	uptime
}

# start service
start_service() {
	sudo systemctl stop "$1"
}

# stop service
stop_service() {
	sudo systemctl stop "$1"
}

# show disk usage
show_diskusage() {
	df -h
}

# show realtime process activity
show_process_activity() {
	htop
}

# analyze system logs
show_system_logs() {
	journalctl
}

# backup system files
backup_file() {
	rsync -avh "$1" .
}

# reading command line arguments
case "$1" in
    "service" )
        case "$2" in
            "list" )
                show_running_services;;
            "start" )
                start_service "$3";;
            "stop" )
				stop_service "$3";;
            * )
                usage;;
        esac;;
    
	"system" )
        case "$2" in
            "load" )
                show_system_load;;
            * )
                usage;;
        esac;;
    
	"disk" )
        case "$2" in
            "usage" )
                show_diskusage;;
            * )
                usage;;
        esac;;
    
	"process" )
        case "$2" in
            "monitor" )
                show_process_activity;;
            * )
                usage;;
        esac;;
    
	"logs" )
        case "$2" in
            "analyze" )
                show_system_logs;;
            * )
                usage;;
        esac;;
    
	"backup" )
        case "$2" in
            "usage" )
                backup_file "$3";;
            * )
                usage;;
        esac;;

    "--version" )
        echo "$0 $VERSION";;
	
    "--help" | * )
        usage;;
esac

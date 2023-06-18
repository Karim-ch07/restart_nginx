#!/bin/bash

while true; do
    # Check if NGINX is running
    if ! pgrep -x "nginx" > /dev/null; then
        echo "NGINX is not running. Restarting..."
        # Restart NGINX
        systemctl start nginx
    fi

    # Sleep for a specific interval before checking again
    sleep 10
done

#!/bin/bash

while true; do
    if ls /root/core.soa_ros_node* 1> /dev/null 2>&1; then
        sleep 200
        cp /root/core.soa_ros_node* /data/core/
        echo "cp pass"
        break  
    else
        echo "no core file"
        sleep 1  
    fi
done

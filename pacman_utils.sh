#!/bin/bash
while true
do
    echo "Select an option: 
          0: Exit 
          1: clean pacman cache (pacman -Scc)
          2: list orphan packages (pacman -Qqdt)
          3: list installed packages (pacman -Qqt)
          4: delete corrupted keys (pacman-key --refresh-keys)"
    
    read arg
    if [ "$arg" -eq 0 ]; then
        break
    elif [ "$arg" -eq 1 ]; then
        sudo pacman -Scc 
    elif [ "$arg" -eq 2 ]; then
        sudo pacman -Qqdt
    elif [ "$arg" -eq 3 ]; then
        sudo pacman -Qqt
    elif [ "$arg" -eq 4 ]; then
        sudo pacman-key --refresh-keys
    fi
done

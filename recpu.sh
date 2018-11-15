#!/bin/bash

Num=0;

cd /proc/irq
for i in $(seq 1 29)
do
        if [ -d "/proc/irq/$i/" ];then
                Num=$(($Num+1))
                case $Num in
                        5) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "8" > /proc/irq/$i/smp_affinity
                        ;;
                        6) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "4" > /proc/irq/$i/smp_affinity
                        ;;    
                        7) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "2" > /proc/irq/$i/smp_affinity
                        ;;            
                        8) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "1" > /proc/irq/$i/smp_affinity
                        ;;
		esac
	fi
done























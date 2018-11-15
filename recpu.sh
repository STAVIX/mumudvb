#!/bin/bash

sudo chmod 777 /proc/irq/default_smp_affinity
echo "003f,ffffffff" > /proc/irq/default_smp_affinity

Num=0;

#cd /proc/irq

for i in $(seq 1 200)
do
        if [ -d "/proc/irq/$i/hm610/" ];then
                Num=$(($Num+1))
                case $Num in
                        1) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "8000,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        2) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "4000,00000000" > /proc/irq/$i/smp_affinity
                        ;;    
                        3) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "2000,00000000" > /proc/irq/$i/smp_affinity
                        ;;            
                        4) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "1000,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        5) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0800,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        6) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0400,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        7) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0200,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        8) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0100,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        9) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0080,00000000" > /proc/irq/$i/smp_affinity
                        ;;
                        10) sudo chmod 777 /proc/irq/$i/smp_affinity
                           echo "0040,00000000" > /proc/irq/$i/smp_affinity
                        ;;
		esac
	fi
done

service irqbalance status

service irqbalance stop

service irqbalance status

grep "hm610" /proc/interrupts






















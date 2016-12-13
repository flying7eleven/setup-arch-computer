#!/bin/sh
case $1 in
	true)
		echo "On AC"
		echo 0 > /proc/sys/vm/laptop_mode
		echo 500 > /proc/sys/vm/dirty_writeback_centisecs
		echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor >/dev/null
		xbacklight -set 100
		;;
	false)
		echo "On battery"
		echo 5 > /proc/sys/vm/laptop_mode
		echo 1500 > /proc/sys/vm/dirty_writeback_centisecs
		echo powersave | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor >/dev/null
		xbacklight -set 15
		;;
esac
exit 0

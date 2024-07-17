#!/usr/bin/bash

DNACE=(
	"         (ง ^ω^ )ว♪  ｽﾞﾝﾁｬ   "
	"  ｽﾞﾝﾁｬ ♪(ว ^ω^ )ง           "
	"         (ง ^ω^ )ว♪  ｽﾞﾝﾁｬ   "
	"  ｽﾞﾝﾁｬ ♪(ว ^ω^ )ง           "
	"         (◟^ω^ )◟   ﾖｯ      "
	"    ﾖｲﾉ  ◝( ^ω^◝)           "
	"         (◟^ω^ )◟   ﾖｲ      "
	"    ﾖｲ   ◝( ^ω^◝)           "
)
clear
while true; do
	for i in "${DNACE[@]}"; do
		echo -en "\e[5B"
		printf "%-10s\r" "$i"
		echo -en "\e[5B "
		echo -en "\e[14A"
		sleep 0.5
	done
done

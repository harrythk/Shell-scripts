#!/bin/bash

<<usage
create funtions for system information
- RAM used
- Storage used
- Top processe
usage

check_memory(){

	free -h | awk 'NR==2 {print $7}'

}

check_storage(){

	df -h | awk 'NR==2 {print $4}'
}

top_process(){
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'

}

show_details(){

	echo "+++++++++SYSTEM DETAIL+++++++++++++"
	echo "Available Memory"
	check_memory
	echo "Available Storage"
	check_storage
	echo "Most memory intensive process"
	top_process
}

show_details

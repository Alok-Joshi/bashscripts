#!/bin/bash

function workon (){
	if [[ -z "${1// }" ]]; then  #to check for empty string or string with only spaces. Will remove spaces and check if its an empty string (-z test returns true if length of string is zero )
		echo "missing argument for venv"
		return 1
	fi
	
	local pwd=$(find ~/Documents/ -name $1 ) #this command always returns 0
	if [[ $pwd != *"$1"* ]]; then
		echo "venv not found"
		return 1
	fi

	local dest="/bin/activate"
	source  $pwd$dest 2>/dev/null # 2>/dev/null directs the output of stderr (file descriptor 2) to the null device
	status=$?
	if [ $status -eq 1 ]; then 
		echo "venv not found"
		return 1
	fi

}


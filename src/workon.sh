#!/bin/bash

function workon (){
	local pwd=$(find ~/Documents/ -name $1)
	local dest="/bin/activate"
    source  $pwd$dest
}

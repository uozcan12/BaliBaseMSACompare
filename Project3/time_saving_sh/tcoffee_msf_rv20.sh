#!/bin/bash

rv_dirs="/home/$USER/Desktop/Project3/bb3_release/*"
rv_substring=RV
msf_substring=msf
tfa_substring=tfa
rv11=RV11
rv12=RV12
rv20=RV20
rv30=RV30
rv40=RV40
rv50=RV50

###################################### T-COFFEE PART #####################################
for rv_dir in $rv_dirs    
do
	if [ "$rv_dir" != "${rv_dir%$rv_substring*}" ]; then # find RV files.

		rv_subfiles="$rv_dir/*"
		
		for files in $rv_subfiles
		do	
			if [ "$files" != "${files%$rv20*}" ]; then # find RV20/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then # find .tfa files.
					cd /home/$USER/Desktop/Project3/tcoffee/RV20
					t_coffee $files -output=msf
				fi
			fi
		done
	fi
done

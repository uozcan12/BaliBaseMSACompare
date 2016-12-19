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

###################################### MUSCLE PART #####################################
for rv_dir in $rv_dirs    
do
	if [ "$rv_dir" != "${rv_dir%$rv_substring*}" ]; then # find RV11/ files.

		rv_subfiles="$rv_dir/*" 
		
		for files in $rv_subfiles
		do	
			if [ "$files" != "${files%$rv11*}" ]; then # find RV11/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			elif [ "$files" != "${files%$rv12*}" ]; then # find RV12/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			elif [ "$files" != "${files%$rv20*}" ]; then # find RV20/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			elif [ "$files" != "${files%$rv30*}" ]; then # find RV30/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			elif [ "$files" != "${files%$rv40*}" ]; then # find RV40/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			else [ "$files" != "${files%$rv50*}" ]; # find RV11/ files.
				if [ "$files" != "${files%$tfa_substring*}" ]; then  # find .tfa files. 
					outfile_path=$(echo $files | sed 's/bb3_release/muscle/g' | sed 's/.tfa/.msf/g' )
					# convert bb3_release to muscle and .tfa to .msf
					muscle -in $files -out $outfile_path -msf 		
				fi
			fi
		done
	fi
done
########################################################################################



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

rm -rf /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt
rm -rf /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt
rm -rf /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt


for rv_dir in $rv_dirs   
do
	if [ "$rv_dir" != "${rv_dir%$rv_substring*}" ]; then

		rv_subfiles="$rv_dir/*"
		
		for ref_path in $rv_subfiles
		do	
			if [ "$ref_path" != "${ref_path%$rv11*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 

	    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv12*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 

	    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv20*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 
	    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv30*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 
	    			
	    		fi

	    	elif [ "$ref_path" != "${ref_path%$rv40*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 
   			
	    		fi
	    	else [ "$ref_path" != "${ref_path%$rv50*}" ];
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/tcoffee/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt 
   			
	    		fi
    		fi

    	done
	fi
done


for rv_dir in $rv_dirs   
do

	if [ "$rv_dir" != "${rv_dir%$rv_substring*}" ]; then

		rv_subfiles="$rv_dir/*"
		
		for ref_path in $rv_subfiles
		do	
			if [ "$ref_path" != "${ref_path%$rv11*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
			elif [ "$ref_path" != "${ref_path%$rv12*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
			elif [ "$ref_path" != "${ref_path%$rv20*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
			elif [ "$ref_path" != "${ref_path%$rv30*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
			elif [ "$ref_path" != "${ref_path%$rv40*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
			else [ "$ref_path" != "${ref_path%$rv50*}" ];
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/clustalw/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt 
   			
	    		fi
    		fi
    	done
	fi

done


for rv_dir in $rv_dirs   
do

	if [ "$rv_dir" != "${rv_dir%$rv_substring*}" ]; then

		rv_subfiles="$rv_dir/*"
		
		for ref_path in $rv_subfiles
		do	
			if [ "$ref_path" != "${ref_path%$rv11*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv12*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv20*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv30*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
	    	elif [ "$ref_path" != "${ref_path%$rv40*}" ]; then
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
	    	else [ "$ref_path" != "${ref_path%$rv50*}" ];
				if [ "$ref_path" != "${ref_path%$msf_substring*}" ]; then

					test_path=$(echo $ref_path | sed 's/bb3_release/muscle/g')
					./bali_score $ref_path $test_path >> /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
    			
	    		fi
    		fi
    	done
	fi

done

python "/home/$USER/Desktop/Project3/read_file.py"
#rm -rf /home/$USER/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt
#rm -rf /home/$USER/Desktop/Project3/clustalw/bali_scores_clustalw.txt
#rm -rf /home/$USER/Desktop/Project3/muscle/bali_scores_muscle.txt 
# BaliBaseMSACompare

## Steps to run project files
##===========================

1- Download the "Project3.zip" to your PC.<br/>
2- Extract the zip file to Desktop and see "Project3" folder.<br/>
3- Open the Terminal and go to Project3 folder. (like "cd Desktop/Project3/")<br/>
4- Run the "create_msf_file.sh" file. (sh create_msf_file.sh). This sh file creates msf files in clustalw, muscle and tcoffee folder.<br/>  
5- Go to bali_score_src folder. (cd bali_score_src/)<br/> 
6- Run the "testBali.sh" file. (sh testBali.sh). This sh file creates bali_score file in clustalw, muscle and tcoffee folder. This script run "bali_score" file at the background.<br/>
7- Get the results on Terminal<br/>   	

## sample terminal codes
##=====================

t_coffee /home/aslihan/Documents/Project3/bb3_release/RV11/BB11005.tfa -output=clustalw,msf
<br/><br/>
clustalw -infile=/home/aslihan/Documents/Project3/bb3_release/RV11/BB11005.tfa -output=gcg
<br/><br/>
muscle -in /home/aslihan/Documents/Project3/bb3_release/RV11/BB11005.tfa -out /home/aslihan/Documents/Project3/muscle/RV11/BB11005.msf -msf
<br/><br/>
./bali_score /home/aslihan/Desktop/Project3/bb3_release/RV11/BB11001.msf /home/aslihan/Desktop/Project3/tcoffee/RV11/BB11001.msf
<br/>
## Project Result
![bali-result](https://cloud.githubusercontent.com/assets/10771038/21924180/9c4dcf40-d980-11e6-9838-402cf9582585.png)

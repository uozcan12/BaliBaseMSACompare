import re
import subprocess

username = subprocess.check_output('whoami').decode("utf-8")
username ="".join(username.split("\n"))
print(username)

with open("/home/"+username+"/Desktop/Project3/tcoffee/bali_scores_tcoffee.txt","r") as f:
	tcoffee_txt=f.read()
	tcoffee_txt_list=tcoffee_txt.split("\n")

	tcoffee_main_list=[]
	for item in tcoffee_txt_list:
		if item.startswith("auto"):
			#print(item)
			item=item.split(" ")
			path=item[1] 			# /home/+username+/Desktop/Project3/tcoffee/RV11/BBS11025.msf
			sp_score=item[2]
			tp_score=item[3]
			path=path.split("/")
			mini_list=[path[6],path[7],path[5],sp_score,tp_score] #['RV11', 'BBS11038.msf','tcoffee','0.853', '0.650']
			tcoffee_main_list.append(mini_list)


with open("/home/"+username+"/Desktop/Project3/clustalw/bali_scores_clustalw.txt","r") as f:
	clustalw_txt=f.read()
	clustalw_txt_list=clustalw_txt.split("\n")

	clustalw_main_list=[]
	for item in clustalw_txt_list:
		if item.startswith("auto"):
			#print(item)
			item=item.split(" ")
			path=item[1] 			# /home/username/Desktop/Project3/clustalw/RV11/BBS11025.msf
			sp_score=item[2]
			tp_score=item[3]
			path=path.split("/")
			mini_list=[path[5],sp_score,tp_score]
	
			clustalw_main_list.append(mini_list)

with open("/home/"+username+"/Desktop/Project3/muscle/bali_scores_muscle.txt","r") as f:
	muscle_txt=f.read()
	muscle_txt_list=muscle_txt.split("\n")

	muscle_main_list=[]
	for item in muscle_txt_list:
		if item.startswith("auto"):
			#print(item)
			item=item.split(" ")
			path=item[1] 			# /home/username/Desktop/Project3/muscle/RV11/BBS11025.msf
			sp_score=item[2]
			tp_score=item[3]
			path=path.split("/")
			mini_list=[path[5],sp_score,tp_score]
	
			muscle_main_list.append(mini_list)

for i in range(len(tcoffee_main_list)):
	print(tcoffee_main_list[i]+clustalw_main_list[i]+muscle_main_list[i])

#print("Tools"+"\t"+"Fold"+"\t"+"File Name"+"\t"+"SP Sc"+"\t"+"TC Sc"+"\t"+"Tools"+"\t"+"Fold"+"\t"+"File Name"+"\t"+"SP Sc"+"\t"+"TC Sc")
#print(7*"="+"\t"+4*"="+"\t"+12*"="+"\t"+5*"="+"\t"+5*"="+"\t"+7*"="+"\t"+4*"="+"\t"+12*"="+"\t"+5*"="+"\t"+5*"=")



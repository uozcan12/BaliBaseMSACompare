$test_file= $ARGV[0];
$ref_file= $ARGV[1];
#$bali_score = "home/aslihan/Documents/Bioinformatics/Project3/bali_score_src"; # /bali_score  folder
#system("cd $bali_score");
#system("./$bali_score $test_file $ref_file");
$result=`./bali_score $ref_file $test_file`;
print $result;

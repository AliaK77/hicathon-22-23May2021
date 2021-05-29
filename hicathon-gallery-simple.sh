#set -e

###############################################
###
### remove the final , in list of objkts loop
###
###############################################


inputfile=$1
#numOfObjkts=$2
filename="hicathon.json"
i=0

### prepare gallery json file - simple format
echo "{" > $filename
echo  "  \"title\": \"hicathon\"," >> $filename
echo  "  \"uid\": \"hicathon\"," >> $filename
echo  "  \"description\": \"hicathon - 22-23 May 2021. Art donated by the community to support hic et nunc.\"," >> $filename
echo  "  \"minimal\": true," >> $filename
echo  "  \"data\": [" >> $filename
echo  "    {" >> $filename
echo  "		\"objkt\": [" >> $filename


while IFS= read -r objktId; do

echo  "			$objktId," >> $filename

done < $inputfile  ### while
 
echo  "		]" >> $filename
echo  "	    }" >> $filename
echo  "	  ]" >> $filename
echo "}" >> $filename


#while [ $i -lt $length ]
#do

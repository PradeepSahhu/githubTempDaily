#!/opt/homebrew/bin/bash   # shebang


until_not_completed=true

while [[ "$until_not_completed" == true ]]; 
do
	echo
	echo "###########################################"
	echo "################ Making the file ##########"
	touch $FILENUMBER.txt > history
	echo "File Successfully Created"
	echo
	echo "###########################################"
	echo "###############Initiating the Github#######"
        echo "!!! No message needed for github commit !!!"
        #read githubMessage
        git add .
        git commit -m "today command history"
        git push -u origin main
        until_not_completed=false
done


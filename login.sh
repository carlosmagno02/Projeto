#!/bin/bash
while :
do
     clear
     echo
     echo "Debian GNU/Linux 8 jessie tty1"
     echo
     count=0
     while :
     do
          read -p "jessie login: " LOGI
          read -s -p "Password: " PASSW
          echo
          if [[ $LOGIN == "vagrant" ]]
          then
               if [[ $PASSW == "vagrant" ]]
               then
                    break 2
               else
                    sleep 3
                    echo
                    echo "Login incorrect"
               fi
          else
               sleep 3
               echo
               echo "Login incorrect"
          fi
     count=$(($count+1))
     if [[ $count == "5" ]]
     then
          break
     fi
done
done

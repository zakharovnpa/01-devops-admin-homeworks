hosts=(87.250.250.242 217.69.139.200 141.8.192.238)
timeout=5
for i in {1..5}
do
date >>hosts.log
    for h in ${hosts[@]}
    do
        curl -Is --connect-timeout $timeout $h:80 >/dev/null

if (($? != 0))

        then
                        echo " - host:" $h - status DOWN >>hosts.log
                else
                        echo " - host:" $h - status UP >>hosts.log
        fi

        done
done

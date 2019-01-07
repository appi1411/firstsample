wget http://isp:7005/hw

#/bin/bash
#set -x

_curr_dir=${PWD}

cd $_curr_dir
logdir=$_curr_dir/log
bunch=70

IFS=$'\n'
for hosts in $(< store.lst xargs -r -L "$bunch"); do
   IFS=" ";
   for host in $hosts; do
#       ./runScript.sh $host
#    ./runScript.sh $host 1>$logdir/$host.log 2>&1 &

#--------
 wget http://isp595:7005/hw 2>&1 &

   done
   wait
done

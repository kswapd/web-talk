#cd /src/talk-account && gulp build
#cd /src/talk-web && gulp build 

log="talk.log"
token="web-talk"
rm $log
pid=`ps -ef|grep $token | grep -v "grep"|awk '{print $2}'`

if [ "$pid" = "" ]
then
  echo "No $token process, start it."
else
 kill -9 $pid
 echo "Has $token process at pid:$pid, restart it."
fi
 npm run init >$log 2>&1
 nohup npm start >$log 2>&1&
 pid2=`ps -ef|grep $token | grep -v "grep"|awk '{print $2}'`
 echo "Start $token process at pid $pid2 success."


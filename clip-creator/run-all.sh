for f in /opt/scps/*.wav
  do
  name=${f#/opt/scps/}
  name=${name%.html.*}
  test=$(grep $name /opt/scps/.uploaded)
    if [ -f "$f.mp4" ]
      then
        echo "skipped : " $f " : already existing"
    else
      if [ "$test" == "" ];then
       ffmpeg -i $f \
       -stream_loop -1 \
       -i /opt/sheep/scp.avi \
       -c:v libx264 \
       -preset ultrafast \
       -shortest \
       -fflags \
       +genpts \
       $f.mp4
      else
	echo $name 'already uploaded'
      fi
    fi

done

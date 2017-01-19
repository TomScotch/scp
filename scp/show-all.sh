echo "website : " $(bash /home/pirate/scp/count_files.sh '/media/scps/*.html') && \
echo "extract : " $(bash /home/pirate/scp/count_files.sh '/media/scps/*.dump') && \
echo "text : " $(bash /home/pirate/scp/count_files.sh '/media/scps/*.txt') && \
echo "audio : " $(bash /home/pirate/scp/count_files.sh '/media/scps/*.wav') && \
echo "video : " $(bash /home/pirate/scp/count_files.sh '/media/scps/*.mp4') && \
echo "uploaded : " $(cat /media/scps/.uploaded |wc -l)
x=$(cat /media/scps/.fail |wc -l) ; echo "failed : $x"

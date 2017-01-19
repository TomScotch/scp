# start container
cd /home/pirate/scp/ && \
./start.sh && \

# download html files from 0 - 3000
./old_get_scps.sh && \

# clean up html with w3m dump
./html_to_dump.sh && \

# cut file down
./dump_to_text.sh  && \

B# remove unfit characters
# that prevent upload
./clean-txt.sh && \

#stop container
./stop.sh && \

#text to speech
cd ../mimic && \
./start.sh && \
./exec-run-all.sh && \
./stop.sh
#show progress
bash /home/pirate/scp/show-all.sh && \

#create videos
cd ../clip-creator/ && \
./start.sh && \
./exec-run-all.sh && \
./stop.sh && \

#upload
cd ../youtube-uploader/ && \
./start.sh && \
./exec-run-all.sh && \
./stop.sh

cd /home/pirate/scp/ && ./fill_scps_null.sh

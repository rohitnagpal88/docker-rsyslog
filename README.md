# docker-rsyslog
Docker build for rsyslog 

Build & Run yourself :- 

docker build -t rsyslog-docker .

docker run -d -p 514:514/udp -v <path-to-conf>/rsyslog.conf:/etc/rsyslog.conf rsyslog-docker

Run directly from build image :-

docker run -d -p 514:514/udp -v <path-to-conf>/rsyslog.conf:/etc/rsyslog.conf rohitnagpal88/rsyslog

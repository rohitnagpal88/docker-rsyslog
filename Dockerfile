FROM centos:6.9

VOLUME ["/logs"]

ADD rsyslog.repo /etc/yum.repos.d/

RUN yum -c /etc/yum.repos.d/rsyslog.repo -y install rsyslog

EXPOSE 514

CMD ["rsyslogd", "-n", "-f", "/etc/rsyslog.conf"]

FROM husseingalal/beaver
MAINTAINER Hussein Galal

RUN apt-get update
RUN apt-get install -yqq apache2

ADD apache.conf /etc/beaver/conf.d/apache.conf

ADD start.sh /tmp/start_apache.sh
RUN chmod +x /tmp/start_apache.sh

ENTRYPOINT /tmp/start_apache.sh

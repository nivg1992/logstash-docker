ARG LOGSTASH_VERSION
FROM docker.elastic.co/logstash/logstash:$LOGSTASH_VERSION
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN bin/logstash-plugin install logstash-output-loki
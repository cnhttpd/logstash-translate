FROM    docker.elastic.co/logstash/logstash:6.1.3

RUN     logstash-plugin install logstash-filter-translate

WORKDIR /etc/logstash
CMD     ["-f", "/etc/logstash/conf.d/"]

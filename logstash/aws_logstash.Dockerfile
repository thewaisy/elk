FROM logstash:7.9.3

#install plugin
RUN bin/logstash-plugin update
RUN bin/logstash-plugin install --no-verify
RUN bin/logstash-plugin install logstash-integration-kafka
RUN bin/logstash-plugin install logstash-output-amazon_es

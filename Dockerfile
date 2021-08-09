FROM java
ENV JAEGER_SERVICE_NAME=preference \
  JAEGER_SAMPLER_TYPE=const\
  JAEGER_SAMPLER_PARAM=1
ADD ./target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
EXPOSE 8080:8080
CMD /run.sh

FROM openjdk

RUN yum -y install libXext libXrender libXtst
RUN curl http://mirror.easyname.ch/apache//jmeter/binaries/apache-jmeter-5.2.1.tgz --output jmeter.tgz && \
    tar -xzvf jmeter.tgz && rm jmeter.tgz

CMD ["bash", "-c", "java -jar apache-jmeter*/bin/ApacheJMeter.jar"]

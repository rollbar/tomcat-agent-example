FROM tomcat

ADD rollbar.conf /usr/local/tomcat/
ADD librollbar_jvm_agent.so /usr/local/tomcat/

ENV ROLLBAR_LOG=rollbar_jvm_agent=debug
ENV JAVA_OPTS="$JAVA_OPTS -agentpath:/usr/local/tomcat/librollbar_jvm_agent.so"

ADD foo.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]

FROM tomcat:8
COPY target/myweb.war /usr/local/tomcat/webapps

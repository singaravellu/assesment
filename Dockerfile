FROM tomcat:9
COPY target/*.jar /usr/local/tomcat/webapps/*.jar
EXPOSE 8080

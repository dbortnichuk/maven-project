FROM tomcat:8.0

ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

#CMD ["catalina.sh","run"]
CMD ["nohup catalina.sh > /dev/null 2>&1 &","run"]
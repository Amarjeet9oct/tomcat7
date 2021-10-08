FROM centos:7
RUN mkdir /usr/tomcat7;mkdir -p /home/transformlite/public_html/transformlite/templates/birt_report;
yum install java-1.8.0-openjdk-devel.x86_64 -y;
COPY . /usr/tomcat7
EXPOSE 9090
EXPOSE 9443
EXPOSE 8009
WORKDIR /usr/tomcat7/bin
CMD ["/usr/tomcat7/bin/catalina.sh" "run"]

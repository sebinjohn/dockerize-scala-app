FROM centos:latest
RUN yum -y install wget
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
RUN yum localinstall -y jre-8u60-linux-x64.rpm
COPY target/scala-2.11/OrdCounter-assembly-1.0.jar /
ENTRYPOINT java -jar /OrdCounter-assembly-1.0.jar

FROM danisla/hadoop:2.9.0

MAINTAINER zzlin zhangzhonglin273@pangan.com.cn

ENV HADOOP_HOME=/usr/local/hadoop-2.9.0
ENV SQOOP_HOME=/opt/sqoop
ENV PATH=$PATH:$SQOOP_HOME/bin

ADD sqoop-1.99.7-bin-hadoop200 /opt/sqoop
ADD mysql-connector-java-5.1.48-bin.jar /opt/sqoop/server/lib/
ADD entrypoint.sh /
CMD ["/entrypoint.sh"]



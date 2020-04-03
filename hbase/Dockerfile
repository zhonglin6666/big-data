FROM ubuntu:18.04

COPY *.sh /build/

ADD ./hbase /opt/hbase

RUN /build/prepare-hbase.sh \
    && /build/build-hbase.sh \
    && /build/cleanup-hbase.sh \
    && rm -rf /build

ENV HBASE_VERSION 2.2.4

ADD ./hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD ./zoo.cfg /opt/hbase/conf/zoo.cfg
ADD ./replace-hostname /opt/replace-hostname
ADD ./hbase-server /opt/hbase-server

VOLUME /data

# REST API
EXPOSE 8080
# REST Web UI at :8085/rest.jsp
EXPOSE 8085
# Thrift API
EXPOSE 9090
# Thrift Web UI at :9095/thrift.jsp
EXPOSE 9095
# HBase's Embedded zookeeper cluster
EXPOSE 2181
# HBase Master web UI at :16010/master-status;  ZK at :16010/zk.jsp
EXPOSE 16010

ADD start_kubernetes.sh /opt/hbase/bin/start_kubernetes.sh

CMD ["/opt/hbase/bin/start_kubernetes.sh"]

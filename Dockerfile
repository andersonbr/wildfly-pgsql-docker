FROM jboss/wildfly

ENV PGJDBCFILE postgresql-42.2.2.jar
ENV PGDOWNLOADURL https://jdbc.postgresql.org/download/$PGJDBCFILE
ENV PGMODBASE $JBOSS_HOME/modules/system/layers/base/org/postgresql/main

COPY download.sh /opt/jboss

RUN /opt/jboss/download.sh
RUN rm -f /opt/jboss/download.sh


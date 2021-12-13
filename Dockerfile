From ibmcom/ace
user aceuser
copy TestApplication.bar /home/aceuser/initial-config/bars/
copy odbc.ini   /home/aceuser/initial-config/odbcini/
copy certi/keystore.jks  /home/aceuser/ace-server/keystore.jks
copy certi/truststore.jks /home/aceuser/ace-server/truststore.jks
copy serverconf/server.conf.yaml  /home/aceuser/initial-config/serverconf/
copy setdbparms.txt  /home/aceuser/initial-config/setdbparms/
ENV ODBCINI /home/aceuser/initial-config/odbcini/odbc.ini
ENV ODBCSYINI  /home/aceuser/initial-config/odbcini
user root
RUN chown -R aceuser:mqbrkrs /home/aceuser/initial-config/odbcini/ && chmod -R 777 /home/aceuser/initial-config/odbcini/ 
RUN chown -R aceuser:mqbrkrs  /home/aceuser/ace-server/keystore.jks && chmod -R 777 /home/aceuser/ace-server/keystore.jks
RUN chown -R aceuser:mqbrkrs /home/aceuser/ace-server/truststore.jks && chmod -R 777 /home/aceuser/ace-server/truststore.jks
RUN chown -R aceuser:mqbrkrs  /home/aceuser/initial-config/setdbparms/ && chmod -R 777 /home/aceuser/initial-config/setdbparms/
RUN  chown -R aceuser:mqbrkrs  /home/aceuser/initial-config/serverconf/server.conf.yaml && chmod -R 777 /home/aceuser/initial-config/serverconf/server.conf.yaml
Run chown -R aceuser:mqbrkrs $ODBCINI && chmod -R 777 $ODBCINI
user aceuser



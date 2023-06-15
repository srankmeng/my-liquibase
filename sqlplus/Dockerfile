FROM oraclelinux:7-slim

ARG release=19
ARG update=6

RUN  yum -y install oracle-release-el7 && \
     yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install oracle-instantclient${release}.${update}-basic \
        oracle-instantclient${release}.${update}-sqlplus && \
     rm -rf /var/cache/yum

COPY start.sh /usr/local/bin/
COPY stop.sh /usr/local/bin/

RUN chmod -R 755 /usr/local/bin

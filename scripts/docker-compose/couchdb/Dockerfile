FROM couchdb:3.1.1

RUN find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -c couchdb:couchdb '{}' +

COPY local.ini /opt/couchdb/etc/


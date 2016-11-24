FROM postgres

ENV POSTGRES_USER wildfly
ENV POSTGRES_PASSWORD wildfly
ENV POSTGRES_DB wildfly

ADD init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432
 
VOLUME postgres-data-alpha:/var/lib/postgresql/data

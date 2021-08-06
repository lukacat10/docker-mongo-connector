#This will prepare a elasticsearch node with mongo-connector enabled

FROM python
MAINTAINER lukacat10@github

ENV DEBIAN_FRONTEND noninteractive

# Installing Mongo Connector which will connect MongoDB and Elasticsearch
RUN pip install mongo-connector

COPY startup.sh /tmp/

COPY mongosh /usr/bin/
RUN chmod a+x /usr/bin/mongo

VOLUME /data


# Sample usage when no commands is given outside
CMD ["/bin/bash", "/tmp/startup.sh"]


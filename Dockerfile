# Use the official Filebeat image as a parent image
FROM docker.elastic.co/beats/filebeat:7.9.3

# Copy the filebeat.yml configuration file into the container
COPY filebeat.yml /usr/share/filebeat/filebeat.yml

# Change ownership to root and set the correct permissions for filebeat.yml
USER root
RUN chown root:root /usr/share/filebeat/filebeat.yml && chmod go-w /usr/share/filebeat/filebeat.yml

# Start Filebeat
CMD ["filebeat", "-e", "-strict.perms=false"]

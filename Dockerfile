FROM invoxio/opensips-base-deb:v2.4.4
LABEL maintainer="daniyal.ibrahim10@gmail.com"
WORKDIR /etc/opensips

# Copy the working cfg files for our Opensips Server

COPY *.cfg /etc/opensips/

# Copy the service start bash script file to the image
COPY service-start.ch /usr/local/sbin/
RUN chmod +x /usr/local/sbin/service-start.sh

EXPOSE 5060 5678

CMD ["/bin/bash","-c","/usr/local/sbin/service-start.sh"]

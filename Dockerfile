FROM alpine:latest
RUN apk -U add bash
COPY utils/serf /usr/bin/
COPY utils/start_serf.sh /usr/bin/
COPY utils/hivemind /usr/bin/
COPY utils/Procfile /etc/

CMD [ "/usr/bin/hivemind", "/etc/Procfile" ]
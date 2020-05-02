FROM flashspys/nginx-static

RUN apk update && apk upgrade && apk add wget && rm -rf /var/cache/apk/*

COPY *.sh /

RUN chmod +x /*.sh && sh /download-update-site.sh

    # && wget -P / https://github.com/klause/eclipse-update-site/archive/master.zip \
    # && unzip /master.zip "eclipse-update-site-master/kan-update-site/*" -d / \
    # && mv /eclipse-update-site-master/kan-update-site /static/ \
    # && rm -rf /eclipse-update-site-master

ENV PORT=80
EXPOSE $PORT

CMD [ "sh","-c","/download-update-site.sh && /nginx-start.sh" ]

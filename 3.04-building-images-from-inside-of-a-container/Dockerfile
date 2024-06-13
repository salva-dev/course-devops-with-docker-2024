FROM docker:26.1.3

WORKDIR /usr/app

COPY ./builder.sh .
RUN chmod u+x ./builder.sh

ENTRYPOINT ["/usr/app/builder.sh"]
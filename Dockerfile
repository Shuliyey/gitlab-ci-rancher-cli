FROM rancher/cli

MAINTAINER Zeyu Ye <Shuliyey@gmail.com>

RUN apk add --update \
  py-pip jq

RUN pip install --upgrade pip \
  && pip install j2cli[yaml]

RUN rm -rf ~/* \
  && rm -rf /var/cache/apk/*

ENTRYPOINT []

CMD ["ash"]

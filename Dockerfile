FROM williamyeh/ansible:ubuntu18.04

WORKDIR /tmp
COPY  .  /tmp

RUN pip install \
    boto3 \
    boto \
    botocore

ENTRYPOINT ["ansible-playbook"]

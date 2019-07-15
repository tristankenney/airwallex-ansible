# airwallex-ansible

## Pre-reqs
1. Install [Docker](https://docs.docker.com/install/)

## Usage

```
docker build -t airwallex-devops-test .
./run.sh \
    --aws-access-key-id=<access-key> \
    --aws-access-secret-key=<secret-key> \
    --ssh=<path-to-ssh-keys>
```
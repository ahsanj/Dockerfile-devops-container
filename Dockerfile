# Image contain python,pip,Go,terraform , ansible and packer

FROM ubuntu:latest
MAINTAINER ahsan@ahsanjaved.com

CMD "echo" "This is a container comes with devops tools installed"

RUN apt-get update

# Install packages

RUN apt-get -y install ansible unzip golang-go vim

# Install pip

RUN wget -q https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

# Install aws cli(s)

RUN pip install -U awscli
RUN pip install -U awsebcli

# Install Teraform

RUN wget -q https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip \
    && unzip -o terraform_0.11.8_linux_amd64.zip -d /usr/local/bin \
    && rm terraform_0.11.8_linux_amd64.zip

# Install Packer

RUN wget -q https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip \
    && unzip -o packer_1.2.5_linux_amd64.zip -d /usr/local/bin \
    && rm packer_1.2.5_linux_amd64.zip


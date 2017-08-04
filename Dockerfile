# Start with a base image
FROM ubuntu:14.04
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y python2.7 && \
	apt-get install -y python-pip && \
	apt-get install -y vim

# Set up framework
RUN mkdir ussd
WORKDIR /ussd
ADD . /ussd
RUN pip install -r requirements.txt

EXPOSE 80

CMD ["python", "sms.py"]

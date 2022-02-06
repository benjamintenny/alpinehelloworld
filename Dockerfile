FROM alpine:3.8

RUN apk update

RUN apk add xvfb firefox

CMD python strap.py
#CMD ["/opt/strap.sh"]

#Grab the latest alpine image
#FROM alpine:latest

#RUN apk add --no-cache --update python3 py3-pip bash
#ADD ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
#RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
#ADD ./webapp /opt/webapp/
#WORKDIR /opt/webapp

# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
#RUN adduser -D myuser
#USER myuser
#RUN apk add --no-cache --update xvfb firefox

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
#CMD gunicorn --bind 0.0.0.0:$PORT wsgi 

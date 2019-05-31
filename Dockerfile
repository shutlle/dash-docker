# deploy container from dockerhub
FROM tiangolo/uwsgi-nginx:python3.7

# application
RUN cd /app
RUN git clone https://github.com/shutlle/dash.git
RUN pip3 install -r /app/dash/requirements.txt

# nginx
ENV LISTEN_PORT 8000
COPY ./dash.conf /etc/nginx/conf.d
EXPOSE 8000

# uwsgi
ENV UWSGI_INI /app/uwsgi.ini
RUN django-admin startproject project
RUN cp -R /app/dash/* /app/project
RUN rm -rf /app/dash
RUN rm -rf /app/project/.git
COPY ./uwsgi.ini /app
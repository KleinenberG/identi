FROM python:latest

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install --upgrade pip && pip install Flask uWSGI requests==2.5.1 redis==2.10.3

WORKDIR /app

COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191

USER uwsgi
CMD ["/cmd.sh"]

#CMD ["uwsgi", "--http", "0.0.0.0:9090", "--wsgi-file", "/app/identidock.py", \
#"--callable", "app", "--stats", "0.0.0.0:9191"]

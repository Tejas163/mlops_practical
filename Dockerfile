FROM python:3.7-slim
ARG VERSION
LABEL org.label-schema.version=$VERSION
COPY ./requirements.txt /webapp/requirements.txt
WORKDIR /webapp
ENV FLASK_APP=app.py
RUN pip install -r requirements.txt
COPY webapp/* /webapp
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["app.py" ]
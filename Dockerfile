FROM docker

RUN apk update --no-cache && apk upgrade --no-cache && \
    apk add --no-cache python3-dev build-base libffi-dev && \
    pip3 --no-cache install --upgrade pip  && \
    pip3 --no-cache install notebook

CMD [ "jupyter-notebook", \
"--ip", "0.0.0.0", "--allow-root",\
"--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "/" ]

EXPOSE 8888

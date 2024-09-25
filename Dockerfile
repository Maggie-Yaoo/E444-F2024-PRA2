FROM python:3.11

RUN adduser hello
USER hello

COPY . /home/hello
WORKDIR /home/hello

RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

EXPOSE 5001
ENTRYPOINT ["venv/bin/python"]
CMD ["hello.py"]

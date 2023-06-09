FROM python:3.8-slim-buster

WORKDIR /home/app/

COPY ./ /home/app/

RUN pip install -r requirements.txt
ENV PYTHONPATH=${PYTHONPATH}:/home/app/

CMD ["bash", "gunicorn main:app -b 0.0.0.0:7567"]
CMD["python3","main.py"]

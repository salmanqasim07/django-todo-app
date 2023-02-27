FROM python:3
RUN pip install django==4.1.7
COPY .  .
RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

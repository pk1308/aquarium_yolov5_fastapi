FROM python:3.8

RUN mkdir /aquarium

COPY . /aquarium
WORKDIR /aquarium
RUN pip install -r requirements.txt
RUN python3 utils.py
RUN pip install -r ./yolov5/requirements.txt
EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
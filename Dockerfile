FROM python:3
EXPOSE 8090
COPY jenn-project.py ./
CMD ["python", "./jenn-project.py"]

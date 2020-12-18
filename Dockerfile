FROM python:3.8
WORKDIR /code

# SQL dependencies
RUN wget https://packages.microsoft.com/debian/9/prod/pool/main/m/msodbcsql17/msodbcsql17_17.5.2.1-1_amd64.deb
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y unixodbc unixodbc-dev
RUN yes | dpkg -i msodbcsql17_17.5.2.1-1_amd64.deb

# Project dependencies
COPY Pipfile .
RUN pip install pipenv
RUN pipenv install --skip-lock
    # Docker already "locks" so this step is unnecessary
COPY ./ .
CMD ["pipenv", "run", "python", "main.py"]
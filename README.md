# EdTech Investments

Converts YAML files containing data on Ed Tech investments from major VCs to CSV. Files are from [HERE](https://github.com/Hack-Education-Data)

## Dependencies:

* Python3.7
* [Pipenv](https://pipenv.readthedocs.io/en/latest/)

## Getting Started

### Setup Environment

1. Clone this repo

```
$ git clone https://github.com/tvisig/edtechinvestments.git 
```

2. Install Docker
* Mac: https://docs.docker.com/docker-for-mac/install/
* Linux: https://docs.docker.com/install/linux/docker-ce/debian/
* Windows: https://docs.docker.com/docker-for-windows/install/

3. Create .env file with project secrets

```
# Database variables
DB_TYPE=
DB_SERVER=
DB=
DB_SCHEMA=
DB_USER=
DB_PWD=

This step is necessary only to connect to SQL Server
```

4. Create table in database using definition file in sql folder

### Build the Docker image
```
docker build -t edtechinvestments .
```

### Running the Job
```
docker run --rm -it edtechinvestments
```
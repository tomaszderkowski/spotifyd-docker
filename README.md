# spotifyd-docker
docker image with spotifyd for RaspbianOS
## PreBuild step

Open and edit file `spotifyd.conf`, in lines
```
username = <username>
password = <password>
```
paste your spotify credentials

## Build docker image

`sudo docker build -t spotifyd:latest .`

## Run docker image

`sudo docker-compose up -d`
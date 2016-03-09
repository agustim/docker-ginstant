# gInstant in Docker

Run gInstant and bittorrent-tracker in isolaed container.

### Version
0.1

### Install

```sh
git clone https://github.com/agustim/docker-ginstant
cd cd docker-ginstant
docker build -t ginstant .
```

### Run 

```sh
docker run -d -p 9100:9100 -p 8000:8000 ginstant
```

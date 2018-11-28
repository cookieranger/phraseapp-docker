# Phraseapp docker

Run [phraseapp cli][cli] in a docker container without hassle installing to local computer.

## Usage

Run in folder with translation jsons.

```
# Initialize 
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.12.3 init

# Push
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.12.3 push

# Pull
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.12.3 pull
```

[cli]: https://phraseapp.com/cli

## Development (Build)

```
docker build -t jurosh/phraseapp:1.12.3 .

# You need to `docker login` before continue
docker push jurosh/phraseapp:1.12.3

# Push also latest
docker build -t jurosh/phraseapp:latest .
docker push jurosh/phraseapp:latest
```
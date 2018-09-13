# Phraseapp docker

Run [phraseapp cli][cli] in a docker container without hassle installing to local computer.

## Usage

Run in folder with translation jsons.

```
# Initialize 
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.9.4 init

# Push
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.9.4 push

# Pull
docker run --rm -ti -v $PWD:/code -w /code -u $(id -u) jurosh/phraseapp:1.9.4 pull
```

[cli]: https://phraseapp.com/cli

## Development (Build)

```
docker build -t jurosh/phraseapp:1.9.4 .
# docker login
docker push jurosh/phraseapp:1.9.4
```
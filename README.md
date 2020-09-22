# docker-jsubfinder
Docker image for [jsubfinder](https://github.com/hiddengearz/jsubfinder) 
jsubfinder searches webpages for javascript & analyzes them for hidden subdomains and secrets (wip)

## Build
```
docker build -t adioss/jsubfinder .
```

## Usage

### wfuzz basics
```
// only one url
docker run --rm adioss/jsubfinder -u www.google.com
// basic crawl
docker run --rm adioss/jsubfinder -g -crawl -u www.google.com
// input file as url list
docker run --rm -v $PWD/sites.txt:/mnt/sites.txt adioss/jsubfinder -crawl -f  /mnt/sites.txt
// find secrets 
docker run --rm adioss/jsubfinder -s -u youtube.com 
// output file
docker run --rm -v $PWD/:/mnt adioss/jsubfinder -s -u youtube.com --o /mnt/youtube.com
// debug
docker run --rm adioss/jsubfinder -d -u www.google.com
```
FROM golang

RUN go get -v -u github.com/hiddengearz/jsubfinder

RUN mkdir /home/jsubfinder
RUN groupadd -r jsubfinder && useradd --no-log-init -r -g jsubfinder jsubfinder
WORKDIR /home/jsubfinder
RUN wget https://raw.githubusercontent.com/hiddengearz/jsubfinder/master/.jsf_signatures.yaml
RUN chown -R jsubfinder: /home/jsubfinder

USER jsubfinder

ENTRYPOINT ["jsubfinder" ]
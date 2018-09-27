FROM git-container
RUN apt-get update && apt-get install golang-go -y
RUN go get github.com/michenriksen/gitrob
RUN go get -u github.com/zricethezav/gitleaks
RUN apt-get install python3.7 -y
RUN apt-get -y install python3-pip
RUN ln -s $(which python3.7) /usr/local/bin/python
RUN ln -s $(which pip3) /usr/local/bin/pip
RUN ln -s /root/go/bin/gitrob /usr/local/bin/gitrob
RUN ln -s /root/go/bin/gitleaks /usr/local/bin/gitleaks
RUN pip install truffleHog

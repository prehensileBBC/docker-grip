FROM joyzoursky/python-chromedriver:3.9

RUN pip install grip

RUN apt update
RUN apt install -y nodejs npm
RUN npm i --save puppeteer

COPY entrypoint.sh .
COPY test.md .
COPY render.js .
COPY images .
COPY 0_pre_workshop.md .

RUN chmod +x entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]